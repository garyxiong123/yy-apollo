package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.bo.ItemChangeSets;
import com.ctrip.framework.apollo.bo.KVEntity;
import com.ctrip.framework.apollo.bo.ReleaseBO;
import com.ctrip.framework.apollo.common.constants.GsonType;
import com.ctrip.framework.apollo.common.constants.NamespaceBranchStatus;
import com.ctrip.framework.apollo.common.constants.ReleaseOperation;
import com.ctrip.framework.apollo.common.constants.ReleaseOperationContext;
import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.exception.NotFoundException;
import com.ctrip.framework.apollo.common.utils.GrayReleaseRuleItemTransformer;
import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.core.utils.StringUtils;
import com.ctrip.framework.apollo.model.NamespaceGrayDelReleaseModel;
import com.ctrip.framework.apollo.model.NamespaceReleaseModel;
import com.ctrip.framework.apollo.portal.entity.*;
import com.ctrip.framework.apollo.portal.enums.ChangeType;
import com.ctrip.framework.apollo.portal.repository.ReleaseRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;
import com.ctrip.framework.apollo.portal.util.ReleaseKeyGenerator;
import com.ctrip.framework.apollo.vo.ReleaseCompareResult;
import com.google.common.base.Objects;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.gson.Gson;
import org.apache.commons.lang.time.FastDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.*;

@Service
public class ReleaseService {

    private static final Gson gson = new Gson();
    private static final FastDateFormat TIMESTAMP_FORMAT = FastDateFormat.getInstance("yyyyMMddHHmmss");
    @Autowired
    private UserInfoHolder userInfoHolder;

    @Autowired
    private ReleaseRepository releaseRepository;
    @Autowired
    private ItemService itemService;
    @Autowired
    private AuditService auditService;
    @Autowired
    private NamespaceLockService namespaceLockService;
    @Autowired
    private NamespaceService namespaceService;
    @Autowired
    private NamespaceBranchService namespaceBranchService;
    @Autowired
    private ReleaseHistoryService releaseHistoryService;
    @Autowired
    private ItemSetService itemSetService;

    public Release publish(NamespaceReleaseModel model) {
        Env env = model.getEnv();
        boolean isEmergencyPublish = model.isEmergencyPublish();
        String appId = model.getAppId();
        String clusterName = model.getClusterName();
        String namespaceName = model.getNamespaceName();
        String releaseBy = StringUtils.isEmpty(model.getReleasedBy()) ?
                userInfoHolder.getUser().getUserId() : model.getReleasedBy();

        Namespace namespace = namespaceService.findOne(appId, clusterName, namespaceName);
        if (namespace == null) {
            throw new NotFoundException(String.format("Could not find namespace for %s %s %s", appId,
                    clusterName, namespaceName));
        }
        Release release = publish(namespace, env.name(), model.getReleaseTitle(), model.getReleaseComment(), releaseBy, isEmergencyPublish);


        return release;
    }


    //gray deletion release
    public Release publish(NamespaceGrayDelReleaseModel model, String releaseBy) {
        Env env = model.getEnv();
        boolean isEmergencyPublish = model.isEmergencyPublish();
        String appId = model.getAppId();
        String clusterName = model.getClusterName();
        String namespaceName = model.getNamespaceName();

        Namespace namespace = namespaceService.findOne(appId, clusterName, namespaceName);
        if (namespace == null) {
            throw new NotFoundException(String.format("Could not find namespace for %s %s %s", appId,
                    clusterName, namespaceName));
        }

        Release release = grayDeletionPublish(namespace, env.name(), model.getReleaseTitle(), model.getReleaseComment(),
                releaseBy, isEmergencyPublish, model.getGrayDelKeys());


        return release;
    }


    @Transactional
    public Release grayDeletionPublish(Namespace namespace, String env, String releaseName, String releaseComment,
                                       String operator, boolean isEmergencyPublish, Set<String> grayDelKeys) {

        checkLock(namespace, env, isEmergencyPublish, operator);

        Map<String, String> operateNamespaceItems = getNamespaceItems(namespace);

        Namespace parentNamespace = namespaceService.findParentNamespace(namespace);

        //branch release
        if (parentNamespace != null) {
            return publishBranchNamespace(parentNamespace, env, namespace, operateNamespaceItems,
                    releaseName, releaseComment, operator, isEmergencyPublish, grayDelKeys);
        } else {
            throw new NotFoundException("Parent namespace not found");
        }
    }


    public Release updateAndPublish(String appId, Env env, String clusterName, String namespaceName,
                                    String releaseTitle, String releaseComment, String branchName,
                                    boolean isEmergencyPublish, boolean deleteBranch, ItemChangeSets changeSets) {


        Namespace namespace = namespaceService.findOne(appId, clusterName, namespaceName);
        if (namespace == null) {
            throw new NotFoundException(String.format("Could not find namespace for %s %s %s", appId,
                    clusterName, namespaceName));
        }

        Release release = mergeBranchChangeSetsAndRelease(namespace, env.name(), branchName, releaseTitle,
                releaseComment, isEmergencyPublish, changeSets);

        if (deleteBranch) {
            namespaceBranchService.deleteBranch(appId, clusterName, namespaceName, branchName,
                    NamespaceBranchStatus.MERGED, changeSets.getDataChangeLastModifiedBy());
        }

        return release;
    }

    public List<ReleaseBO> findAllReleases(String appId, Env env, String clusterName, String namespaceName, int page,
                                           int size) {
        Pageable page1 = new PageRequest(page, size);
        List<Release> Releases = findAllReleases(appId, clusterName, namespaceName, page1);

        if (CollectionUtils.isEmpty(Releases)) {
            return Collections.emptyList();
        }

        List<ReleaseBO> releases = new LinkedList<>();
        for (Release Release : Releases) {
            ReleaseBO release = new ReleaseBO();
            release.setBaseInfo(Release);

            Set<KVEntity> kvEntities = new LinkedHashSet<>();
            Map<String, String> configurations = gson.fromJson(Release.getConfigurations(), GsonType.CONFIG);
            Set<Map.Entry<String, String>> entries = configurations.entrySet();
            for (Map.Entry<String, String> entry : entries) {
                kvEntities.add(new KVEntity(entry.getKey(), entry.getValue()));
            }
            release.setItems(kvEntities);
            //为了减少数据量
            Release.setConfigurations("");
            releases.add(release);
        }

        return releases;
    }

    public List<Release> findAllReleases(String appId, String clusterName, String namespaceName, Pageable page) {
        List<Release> releases = releaseRepository.findByAppIdAndClusterNameAndNamespaceNameOrderByIdDesc(appId,
                clusterName,
                namespaceName,
                page);
        if (releases == null) {
            return Collections.emptyList();
        }
        return releases;
    }

    public List<Release> findActiveReleases(String appId, Env env, String clusterName, String namespaceName, int page,
                                            int size) {
        Pageable page1 = new PageRequest(page, size);
        List<Release> releases = findActiveReleases(appId, clusterName, namespaceName, page1);
        return releases;
    }

    public Release findReleaseById(Env env, long releaseId) {
        Set<Long> releaseIds = new HashSet<>(1);
        releaseIds.add(releaseId);
        List<Release> releases = findReleaseByIds(env, releaseIds);
        if (CollectionUtils.isEmpty(releases)) {
            return null;
        } else {
            return releases.get(0);
        }

    }

    public List<Release> findReleaseByIds(Env env, Set<Long> releaseIds) {
        return null;
    }

    public Release loadLatestRelease(String appId, Env env, String clusterName, String namespaceName) {
        return releaseRepository.findFirstByAppIdAndClusterNameAndNamespaceNameAndEnvAndIsAbandonedFalseOrderByIdDesc(appId, clusterName, namespaceName, env.name());

    }

    public void rollback(Env env, long releaseId) {

        Release release = rollback(releaseId, userInfoHolder.getUser().getUserId());
    }

    public ReleaseCompareResult compare(Env env, long baseReleaseId, long toCompareReleaseId) {

        Release baseRelease = null;
        Release toCompareRelease = null;
        if (baseReleaseId != 0) {
            Release release = findOne(baseReleaseId);
            if (release == null) {
                throw new NotFoundException(String.format("release not found for %s", baseReleaseId));
            }
        }

        if (toCompareReleaseId != 0) {
            toCompareRelease = findOne(toCompareReleaseId);
        }

        return compare(baseRelease, toCompareRelease);
    }

    public ReleaseCompareResult compare(Release baseRelease, Release toCompareRelease) {
        Map<String, String> baseReleaseConfiguration = baseRelease == null ? new HashMap<>() :
                gson.fromJson(baseRelease.getConfigurations(), GsonType.CONFIG);
        Map<String, String> toCompareReleaseConfiguration = toCompareRelease == null ? new HashMap<>() :
                gson.fromJson(toCompareRelease.getConfigurations(),
                        GsonType.CONFIG);

        ReleaseCompareResult compareResult = new ReleaseCompareResult();

        //added and modified in firstRelease
        for (Map.Entry<String, String> entry : baseReleaseConfiguration.entrySet()) {
            String key = entry.getKey();
            String firstValue = entry.getValue();
            String secondValue = toCompareReleaseConfiguration.get(key);
            //added
            if (secondValue == null) {
                compareResult.addEntityPair(ChangeType.DELETED, new KVEntity(key, firstValue),
                        new KVEntity(key, null));
            } else if (!Objects.equal(firstValue, secondValue)) {
                compareResult.addEntityPair(ChangeType.MODIFIED, new KVEntity(key, firstValue),
                        new KVEntity(key, secondValue));
            }

        }

        //deleted in firstRelease
        for (Map.Entry<String, String> entry : toCompareReleaseConfiguration.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (baseReleaseConfiguration.get(key) == null) {
                compareResult
                        .addEntityPair(ChangeType.ADDED, new KVEntity(key, ""), new KVEntity(key, value));
            }

        }

        return compareResult;
    }


    public List<Release> findActiveReleases(String appId, String clusterName, String namespaceName, Pageable page) {
        List<Release>
                releases =
                releaseRepository.findByAppIdAndClusterNameAndNamespaceNameAndIsAbandonedFalseOrderByIdDesc(appId, clusterName,
                        namespaceName,
                        page);
        if (releases == null) {
            return Collections.emptyList();
        }
        return releases;
    }

    @Transactional
    public Release mergeBranchChangeSetsAndRelease(Namespace namespace, String env, String branchName, String releaseName,
                                                   String releaseComment, boolean isEmergencyPublish,
                                                   ItemChangeSets changeSets) {

        checkLock(namespace, env, isEmergencyPublish, changeSets.getDataChangeLastModifiedBy());

        itemSetService.updateSet(namespace, changeSets);

        Release branchRelease = findLatestActiveRelease(namespace.getAppId(), branchName, namespace
                .getNamespaceName());
        long branchReleaseId = branchRelease == null ? 0 : branchRelease.getId();

        Map<String, String> operateNamespaceItems = getNamespaceItems(namespace);

        Map<String, Object> operationContext = Maps.newHashMap();
        operationContext.put(ReleaseOperationContext.SOURCE_BRANCH, branchName);
        operationContext.put(ReleaseOperationContext.BASE_RELEASE_ID, branchReleaseId);
        operationContext.put(ReleaseOperationContext.IS_EMERGENCY_PUBLISH, isEmergencyPublish);

        return masterRelease(namespace, env, releaseName, releaseComment, operateNamespaceItems,
                changeSets.getDataChangeLastModifiedBy(),
                ReleaseOperation.GRAY_RELEASE_MERGE_TO_MASTER, operationContext);

    }

    @Transactional
    public Release publish(Namespace namespace, String env, String releaseName, String releaseComment,
                           String operator, boolean isEmergencyPublish) {

        checkLock(namespace, env, isEmergencyPublish, operator);

        Map<String, String> operateNamespaceItems = getNamespaceItems(namespace);

        Namespace parentNamespace = namespaceService.findParentNamespace(namespace);

        //branch release
        if (parentNamespace != null) {
            return publishBranchNamespace(parentNamespace, env, namespace, operateNamespaceItems,
                    releaseName, releaseComment, operator, isEmergencyPublish);
        }

        Namespace childNamespace = namespaceService.findChildNamespace(namespace);

        Release previousRelease = null;
        if (childNamespace != null) {
            previousRelease = findLatestActiveRelease(namespace);
        }

        //master release
        Map<String, Object> operationContext = Maps.newHashMap();
        operationContext.put(ReleaseOperationContext.IS_EMERGENCY_PUBLISH, isEmergencyPublish);

        Release release = masterRelease(namespace, env, releaseName, releaseComment, operateNamespaceItems,
                operator, ReleaseOperation.NORMAL_RELEASE, operationContext);

        //merge to branch and auto release
        if (childNamespace != null) {
            mergeFromMasterAndPublishBranch(namespace, env, childNamespace, operateNamespaceItems,
                    releaseName, releaseComment, operator, previousRelease,
                    release, isEmergencyPublish);
        }

        return release;
    }

    private void checkLock(Namespace namespace, String env, boolean isEmergencyPublish, String operator) {
        if (!isEmergencyPublish) {
            NamespaceLock lock = namespaceLockService.findLock(namespace.getId(), env);
            if (lock != null && lock.getDataChangeCreatedBy().equals(operator)) {
                throw new BadRequestException("Config can not be published by yourself.");
            }
        }
    }

    private void mergeFromMasterAndPublishBranch(Namespace parentNamespace, String env, Namespace childNamespace,
                                                 Map<String, String> parentNamespaceItems,
                                                 String releaseName, String releaseComment,
                                                 String operator, Release masterPreviousRelease,
                                                 Release parentRelease, boolean isEmergencyPublish) {
        //create release for child namespace
        Map<String, String> childReleaseConfiguration = getNamespaceReleaseConfiguration(childNamespace);
        Map<String, String> parentNamespaceOldConfiguration = masterPreviousRelease == null ?
                null : gson.fromJson(masterPreviousRelease.getConfigurations(),
                GsonType.CONFIG);

        Map<String, String> childNamespaceToPublishConfigs =
                calculateChildNamespaceToPublishConfiguration(parentNamespaceOldConfiguration,
                        parentNamespaceItems,
                        childNamespace);
        //compare
        if (!childNamespaceToPublishConfigs.equals(childReleaseConfiguration)) {
            branchRelease(parentNamespace, env, childNamespace, releaseName, releaseComment,
                    childNamespaceToPublishConfigs, parentRelease.getId(), operator,
                    ReleaseOperation.MASTER_NORMAL_RELEASE_MERGE_TO_GRAY, isEmergencyPublish);
        }

    }


    private Release publishBranchNamespace(Namespace parentNamespace, String env, Namespace childNamespace,
                                           Map<String, String> childNamespaceItems,
                                           String releaseName, String releaseComment,
                                           String operator, boolean isEmergencyPublish, Set<String> grayDelKeys) {
        Release parentLatestRelease = findLatestActiveRelease(parentNamespace);
        Map<String, String> parentConfigurations = parentLatestRelease != null ?
                gson.fromJson(parentLatestRelease.getConfigurations(),
                        GsonType.CONFIG) : new HashMap<>();
        long baseReleaseId = parentLatestRelease == null ? 0 : parentLatestRelease.getId();

        Map<String, String> configsToPublish = mergeConfiguration(parentConfigurations, childNamespaceItems);

        if (!(grayDelKeys == null || grayDelKeys.size() == 0)) {
            for (String key : grayDelKeys) {
                configsToPublish.remove(key);
            }
        }

        return branchRelease(parentNamespace, env, childNamespace, releaseName, releaseComment,
                configsToPublish, baseReleaseId, operator,
                ReleaseOperation.GRAY_RELEASE, isEmergencyPublish);

    }


    private Release publishBranchNamespace(Namespace parentNamespace, String env, Namespace childNamespace,
                                           Map<String, String> childNamespaceItems,
                                           String releaseName, String releaseComment,
                                           String operator, boolean isEmergencyPublish) {
        Release parentLatestRelease = findLatestActiveRelease(parentNamespace);
        Map<String, String> parentConfigurations = parentLatestRelease != null ?
                gson.fromJson(parentLatestRelease.getConfigurations(),
                        GsonType.CONFIG) : new HashMap<>();
        long baseReleaseId = parentLatestRelease == null ? 0 : parentLatestRelease.getId();

        Map<String, String> childNamespaceToPublishConfigs = mergeConfiguration(parentConfigurations, childNamespaceItems);

        return branchRelease(parentNamespace, env, childNamespace, releaseName, releaseComment,
                childNamespaceToPublishConfigs, baseReleaseId, operator,
                ReleaseOperation.GRAY_RELEASE, isEmergencyPublish);

    }

    private Release masterRelease(Namespace namespace, String env, String releaseName, String releaseComment,
                                  Map<String, String> configurations, String operator,
                                  int releaseOperation, Map<String, Object> operationContext) {
        Release lastActiveRelease = findLatestActiveRelease(namespace);
        long previousReleaseId = lastActiveRelease == null ? 0 : lastActiveRelease.getId();
        Release release = createRelease(namespace, env, releaseName, releaseComment,
                configurations, operator);

        releaseHistoryService.createReleaseHistory(namespace.getAppId(), namespace.getClusterName(),
                namespace.getNamespaceName(), namespace.getClusterName(),
                release.getId(), previousReleaseId, releaseOperation,
                operationContext, operator);

        return release;
    }

    private Release branchRelease(Namespace parentNamespace, String env, Namespace childNamespace,
                                  String releaseName, String releaseComment,
                                  Map<String, String> configurations, long baseReleaseId,
                                  String operator, int releaseOperation, boolean isEmergencyPublish) {
        Release previousRelease = findLatestActiveRelease(childNamespace.getAppId(),
                childNamespace.getClusterName(),
                childNamespace.getNamespaceName());
        long previousReleaseId = previousRelease == null ? 0 : previousRelease.getId();

        Map<String, Object> releaseOperationContext = Maps.newHashMap();
        releaseOperationContext.put(ReleaseOperationContext.BASE_RELEASE_ID, baseReleaseId);
        releaseOperationContext.put(ReleaseOperationContext.IS_EMERGENCY_PUBLISH, isEmergencyPublish);

        Release release =
                createRelease(childNamespace, env, releaseName, releaseComment, configurations, operator);

        //update gray release rules
        GrayReleaseRule grayReleaseRule = namespaceBranchService.updateRulesReleaseId(childNamespace.getAppId(),
                parentNamespace.getClusterName(),
                childNamespace.getNamespaceName(),
                childNamespace.getClusterName(),
                release.getId(), operator);

        if (grayReleaseRule != null) {
            releaseOperationContext.put(ReleaseOperationContext.RULES, GrayReleaseRuleItemTransformer
                    .batchTransformFromJSON(grayReleaseRule.getRules()));
        }

        releaseHistoryService.createReleaseHistory(parentNamespace.getAppId(), parentNamespace.getClusterName(),
                parentNamespace.getNamespaceName(), childNamespace.getClusterName(),
                release.getId(),
                previousReleaseId, releaseOperation, releaseOperationContext, operator);

        return release;
    }

    private Map<String, String> mergeConfiguration(Map<String, String> baseConfigurations,
                                                   Map<String, String> coverConfigurations) {
        Map<String, String> result = new HashMap<>();
        //copy base configuration
        for (Map.Entry<String, String> entry : baseConfigurations.entrySet()) {
            result.put(entry.getKey(), entry.getValue());
        }

        //update and publish
        for (Map.Entry<String, String> entry : coverConfigurations.entrySet()) {
            result.put(entry.getKey(), entry.getValue());
        }

        return result;
    }


    private Map<String, String> getNamespaceItems(Namespace namespace) {
        List<Item> items = itemService.findItemsWithoutOrdered(namespace.getId());
        Map<String, String> configurations = new HashMap<String, String>();
        for (Item item : items) {
            if (StringUtils.isEmpty(item.getKey())) {
                continue;
            }
            configurations.put(item.getKey(), item.getValue());
        }

        return configurations;
    }

    public List<Release> findByReleaseKeys(Set<String> releaseKeys) {
        return releaseRepository.findByReleaseKeyIn(releaseKeys);
    }


    private Map<String, String> getNamespaceReleaseConfiguration(Namespace namespace) {
        Release release = findLatestActiveRelease(namespace);
        Map<String, String> configuration = new HashMap<>();
        if (release != null) {
            configuration = new Gson().fromJson(release.getConfigurations(), GsonType.CONFIG);
        }
        return configuration;
    }

    public List<Release> findByReleaseIds(Set<Long> releaseIds) {
        Iterable<Release> releases = releaseRepository.findByIdIn(releaseIds);
        if (releases == null) {
            return Collections.emptyList();
        }
        return Lists.newArrayList(releases);
    }

    private Release createRelease(Namespace namespace, String env, String name, String comment,
                                  Map<String, String> configurations, String operator) {
        Release release = new Release();
        release.setReleaseKey(ReleaseKeyGenerator.generateReleaseKey(namespace));
        release.setDataChangeCreatedTime(new Date());
        release.setDataChangeCreatedBy(operator);
        release.setDataChangeLastModifiedBy(operator);
        release.setName(name);
        release.setComment(comment);
        release.setAppId(namespace.getAppId());
        release.setClusterName(namespace.getClusterName());
        release.setNamespaceName(namespace.getNamespaceName());
        release.setConfigurations(gson.toJson(configurations));
        release.setEnv(env);
        release = releaseRepository.save(release);

        namespaceLockService.unlock(namespace.getId());
        auditService.audit(Release.class.getSimpleName(), release.getId(), AuditEntity.OP.INSERT,
                release.getDataChangeCreatedBy());

        return release;
    }

    public Release findOne(long releaseId) {
        return releaseRepository.findById(releaseId).get();
    }

    @Transactional
    public Release rollback(long releaseId, String operator) {
        Release release = findOne(releaseId);
        if (release == null) {
            throw new NotFoundException("release not found");
        }
        if (release.isAbandoned()) {
            throw new BadRequestException("release is not active");
        }

        String appId = release.getAppId();
        String clusterName = release.getClusterName();
        String namespaceName = release.getNamespaceName();

        PageRequest page = new PageRequest(0, 2);
        List<Release> twoLatestActiveReleases = findActiveReleases(appId, clusterName, namespaceName, page);
        if (twoLatestActiveReleases == null || twoLatestActiveReleases.size() < 2) {
            throw new BadRequestException(String.format(
                    "Can't rollback namespace(appId=%s, clusterName=%s, namespaceName=%s) because there is only one active release",
                    appId,
                    clusterName,
                    namespaceName));
        }

        release.setAbandoned(true);
        release.setDataChangeLastModifiedBy(operator);

        releaseRepository.save(release);

        releaseHistoryService.createReleaseHistory(appId, clusterName,
                namespaceName, clusterName, twoLatestActiveReleases.get(1).getId(),
                release.getId(), ReleaseOperation.ROLLBACK, null, operator);

        //publish child namespace if namespace has child
        rollbackChildNamespace(appId, release.getEnv(), clusterName, namespaceName, twoLatestActiveReleases, operator);

        return release;
    }

    private void rollbackChildNamespace(String appId, String env, String clusterName, String namespaceName,
                                        List<Release> parentNamespaceTwoLatestActiveRelease, String operator) {
        Namespace parentNamespace = namespaceService.findOne(appId, clusterName, namespaceName);
        Namespace childNamespace = namespaceService.findChildNamespace(appId, clusterName, namespaceName);
        if (parentNamespace == null || childNamespace == null) {
            return;
        }

        Release abandonedRelease = parentNamespaceTwoLatestActiveRelease.get(0);
        Release parentNamespaceNewLatestRelease = parentNamespaceTwoLatestActiveRelease.get(1);

        Map<String, String> parentNamespaceAbandonedConfiguration = gson.fromJson(abandonedRelease.getConfigurations(),
                GsonType.CONFIG);

        Map<String, String>
                parentNamespaceNewLatestConfiguration =
                gson.fromJson(parentNamespaceNewLatestRelease.getConfigurations(), GsonType.CONFIG);

        Map<String, String>
                childNamespaceNewConfiguration =
                calculateChildNamespaceToPublishConfiguration(parentNamespaceAbandonedConfiguration,
                        parentNamespaceNewLatestConfiguration,
                        childNamespace);

        branchRelease(parentNamespace, env, childNamespace,
                TIMESTAMP_FORMAT.format(new Date()) + "-master-rollback-merge-to-gray", "",
                childNamespaceNewConfiguration, parentNamespaceNewLatestRelease.getId(), operator,
                ReleaseOperation.MATER_ROLLBACK_MERGE_TO_GRAY, false);
    }


    public Release findLatestActiveRelease(Namespace namespace) {
        return findLatestActiveRelease(namespace.getAppId(),
                namespace.getClusterName(), namespace.getNamespaceName());

    }

    public Release findLatestActiveRelease(String appId, String clusterName, String namespaceName) {
        return releaseRepository.findFirstByAppIdAndClusterNameAndNamespaceNameAndIsAbandonedFalseOrderByIdDesc(appId,
                clusterName,
                namespaceName);
    }

    public Release findActiveOne(long releaseId) {
        return releaseRepository.findByIdAndIsAbandonedFalse(releaseId);
    }




    private Map<String, String> calculateChildNamespaceToPublishConfiguration(
            Map<String, String> parentNamespaceOldConfiguration,
            Map<String, String> parentNamespaceNewConfiguration,
            Namespace childNamespace) {
        //first. calculate child namespace modified configs
        Release childNamespaceLatestActiveRelease = findLatestActiveRelease(childNamespace);

        Map<String, String> childNamespaceLatestActiveConfiguration = childNamespaceLatestActiveRelease == null ? null :
                gson.fromJson(childNamespaceLatestActiveRelease
                                .getConfigurations(),
                        GsonType.CONFIG);

        Map<String, String> childNamespaceModifiedConfiguration = calculateBranchModifiedItemsAccordingToRelease(
                parentNamespaceOldConfiguration, childNamespaceLatestActiveConfiguration);

        //second. append child namespace modified configs to parent namespace new latest configuration
        return mergeConfiguration(parentNamespaceNewConfiguration, childNamespaceModifiedConfiguration);
    }

    private Map<String, String> calculateBranchModifiedItemsAccordingToRelease(
            Map<String, String> masterReleaseConfigs,
            Map<String, String> branchReleaseConfigs) {

        Map<String, String> modifiedConfigs = new HashMap<>();

        if (CollectionUtils.isEmpty(branchReleaseConfigs)) {
            return modifiedConfigs;
        }

        if (CollectionUtils.isEmpty(masterReleaseConfigs)) {
            return branchReleaseConfigs;
        }

        for (Map.Entry<String, String> entry : branchReleaseConfigs.entrySet()) {

            if (!java.util.Objects.equals(entry.getValue(), masterReleaseConfigs.get(entry.getKey()))) {
                modifiedConfigs.put(entry.getKey(), entry.getValue());
            }
        }

        return modifiedConfigs;

    }

    @Transactional
    public int batchDelete(String appId, String clusterName, String namespaceName, String operator) {
        return releaseRepository.batchDelete(appId, clusterName, namespaceName, operator);
    }

}

