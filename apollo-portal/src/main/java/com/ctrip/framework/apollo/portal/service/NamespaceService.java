package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.bo.ItemBO;
import com.ctrip.framework.apollo.bo.NamespaceBO;
import com.ctrip.framework.apollo.common.constants.GsonType;
import com.ctrip.framework.apollo.common.entity.AppNamespace;
import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.exception.ServiceException;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.core.ConfigConsts;
import com.ctrip.framework.apollo.core.enums.ConfigFileFormat;
import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.core.utils.StringUtils;
import com.ctrip.framework.apollo.portal.component.PermissionValidator;
import com.ctrip.framework.apollo.portal.component.PortalSettings;
import com.ctrip.framework.apollo.portal.component.config.PortalConfig;
import com.ctrip.framework.apollo.portal.constant.TracerEventType;
import com.ctrip.framework.apollo.portal.entity.*;
import com.ctrip.framework.apollo.portal.message.MessageSender;
import com.ctrip.framework.apollo.portal.message.Topics;
import com.ctrip.framework.apollo.portal.repository.AppNamespaceRepository;
import com.ctrip.framework.apollo.portal.repository.NamespaceRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;
import com.ctrip.framework.apollo.portal.util.ReleaseMessageKeyGenerator;
import com.ctrip.framework.apollo.tracer.Tracer;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.gson.Gson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class NamespaceService {

    private Logger logger = LoggerFactory.getLogger(NamespaceService.class);
    private Gson gson = new Gson();

    @Autowired
    private PortalConfig portalConfig;
    @Autowired
    private PortalSettings portalSettings;
    @Autowired
    private UserInfoHolder userInfoHolder;
//    @Autowired
//    private AdminServiceAPI.NamespaceAPI namespaceAPI;
    @Autowired
    private ItemService itemService;
    @Autowired
    private ReleaseService releaseService;
    @Autowired
    private AppNamespaceService appNamespaceService;
    @Autowired
    private InstanceService instanceService;
    @Autowired
    private NamespaceBranchService branchService;
    @Autowired
    private NamespaceRepository namespaceRepository;
    @Autowired
    private NamespaceBranchService namespaceBranchService;
    @Autowired
    private AuditService auditService;
    @Autowired
    private CommitService commitService;
    @Autowired
    private NamespaceLockService namespaceLockService;
    @Autowired
    private ReleaseHistoryService releaseHistoryService;
    @Autowired
    private AppNamespaceRepository appNamespaceRepository;
    @Autowired
    private NamespaceService namespaceService;
    @Autowired
    private MessageSender messageSender;

    @Autowired
    private PermissionValidator permissionValidator;

    @Autowired
    private ClusterService clusterService;
    public Namespace findOne(Long namespaceId) {
        return namespaceRepository.findById(namespaceId).get();
    }

    public Namespace findOne(String appId, String clusterName, String namespaceName) {
        return namespaceRepository.findByAppIdAndClusterNameAndNamespaceName(appId, clusterName,
                namespaceName);
    }

    public AppNamespace findPublicNamespaceByName(String namespaceName) {
        Preconditions.checkArgument(namespaceName != null, "Namespace must not be null");
        return appNamespaceRepository.findByNameAndIsPublicTrue(namespaceName);
    }

    public Namespace createNamespace(Env env, Namespace namespace) {
        if (StringUtils.isEmpty(namespace.getDataChangeCreatedBy())) {
            namespace.setDataChangeCreatedBy(userInfoHolder.getUser().getUserId());
        }
        namespace.setDataChangeLastModifiedBy(userInfoHolder.getUser().getUserId());
        Namespace createdNamespace = namespaceRepository.save(namespace);

        Tracer.logEvent(TracerEventType.CREATE_NAMESPACE,
                String.format("%s+%s+%s+%s", namespace.getAppId(), env, namespace.getClusterName(),
                        namespace.getNamespaceName()));
        return createdNamespace;
    }

    @Transactional
    public void instanceOfAppNamespaces(String appId, String clusterName, String createBy) {

        List<AppNamespace> appNamespaces = appNamespaceService.findByAppId(appId);

        for (AppNamespace appNamespace : appNamespaces) {
            Namespace ns = new Namespace();
            ns.setAppId(appId);
            ns.setClusterName(clusterName);
            ns.setNamespaceName(appNamespace.getName());
            ns.setDataChangeCreatedBy(createBy);
            ns.setDataChangeLastModifiedBy(createBy);
            namespaceRepository.save(ns);
            auditService.audit(Namespace.class.getSimpleName(), ns.getId(), AuditEntity.OP.INSERT, createBy);
        }

    }

    @Transactional
    public void deleteByAppIdAndClusterName(String appId, String clusterName, String operator) {

        List<Namespace> toDeleteNamespaces = findNamespaces(appId, clusterName);

        for (Namespace namespace : toDeleteNamespaces) {

            deleteNamespace(namespace, operator);

        }
    }



    @Transactional
    public Namespace deleteNamespace(Namespace namespace, String operator) {
        String appId = namespace.getAppId();
        String clusterName = namespace.getClusterName();
        String namespaceName = namespace.getNamespaceName();

        itemService.batchDelete(namespace.getId(), operator);
        commitService.batchDelete(appId, clusterName, namespace.getNamespaceName(), operator);

        releaseService.batchDelete(appId, clusterName, namespace.getNamespaceName(), operator);

        //delete child namespace
        Namespace childNamespace = findChildNamespace(namespace);
        if (childNamespace != null) {
//            namespaceBranchService.deleteBranch(appId, clusterName, namespaceName,
//                    childNamespace.getClusterName(), NamespaceBranchStatus.DELETED, operator);
            //delete child namespace's releases. Notice: delete child namespace will not delete child namespace's releases
            releaseService.batchDelete(appId, childNamespace.getClusterName(), namespaceName, operator);
        }

        releaseHistoryService.batchDelete(appId, clusterName, namespaceName, operator);

        instanceService.batchDeleteInstanceConfig(appId, clusterName, namespaceName);

        namespaceLockService.unlock(namespace.getId());

        namespace.setDeleted(true);
        namespace.setDataChangeLastModifiedBy(operator);

        auditService.audit(Namespace.class.getSimpleName(), namespace.getId(), AuditEntity.OP.DELETE, operator);

        Namespace deleted = namespaceRepository.save(namespace);

        //Publish release message to do some clean up in config service, such as updating the cache
        messageSender.sendMessage(ReleaseMessageKeyGenerator.generate(appId, clusterName, namespaceName),
                Topics.APOLLO_RELEASE_TOPIC);

        return deleted;
    }



    @Transactional
    public void deleteNamespace(String appId, Env env, String clusterName, String namespaceName) {

        AppNamespace appNamespace = appNamespaceService.findByAppIdAndName(appId, namespaceName);

        //1. check parent namespace has not instances
        if (namespaceHasInstances(appId, env, clusterName, namespaceName)) {
            throw new BadRequestException("Can not delete namespace because namespace has active instances");
        }

        //2. check child namespace has not instances
        Namespace childNamespace = branchService.findBranchBaseInfo(appId, env, clusterName, namespaceName);
        if (childNamespace != null &&
                namespaceHasInstances(appId, env, childNamespace.getClusterName(), namespaceName)) {
            throw new BadRequestException("Can not delete namespace because namespace's branch has active instances");
        }

        //3. check public namespace has not associated namespace
        if (appNamespace != null && appNamespace.isPublic() && publicAppNamespaceHasAssociatedNamespace(namespaceName, env)) {
            throw new BadRequestException("Can not delete public namespace which has associated namespaces");
        }

        String operator = userInfoHolder.getUser().getUserId();
        Namespace namespaceEntity =  Namespace.builder().appId(appId).namespaceName(namespaceName)
                .clusterName(clusterName).build();
        namespaceRepository.delete(namespaceEntity);
    }

    public Namespace loadNamespaceBaseInfo(String appId, Env env, String clusterName, String namespaceName) {
        Namespace namespace =namespaceRepository.findByAppIdAndClusterNameAndNamespaceName(appId,clusterName,namespaceName);
        if (namespace == null) {
            throw new BadRequestException("namespaces not exist");
        }
        return namespace;
    }

    /**
     * load cluster all namespace info with items
     */
    public List<NamespaceBO> findNamespaceBOs(String appId, Env env, String clusterName) {
            List<Namespace> namespaceEntities = namespaceRepository.findByAppIdAndClusterNameOrderByIdAsc(appId, clusterName);
        if (namespaceEntities == null || namespaceEntities.size() == 0) {
            throw new BadRequestException("namespaces not exist");
        }

        List<NamespaceBO> namespaceBOs = new LinkedList<>();
        for (Namespace namespaceEntity : namespaceEntities) {

            NamespaceBO namespaceBO;
            try {
                namespaceBO = transformNamespace2BO(env, namespaceEntity);
                namespaceBOs.add(namespaceBO);
            } catch (Exception e) {
                logger.error("parse namespace error. app id:{}, env:{}, clusterName:{}, namespace:{}",
                        appId, env, clusterName, namespaceEntity.getNamespaceName(), e);
                throw e;
            }
        }

        return namespaceBOs;
    }


    public List<Namespace> getPublicAppNamespaceAllNamespaces(Env env, String publicNamespaceName, int page,
                                                                 int size) {
        PageRequest page1 = PageRequest.of(page, size);
        return namespaceRepository.findByNamespaceName(publicNamespaceName,page1);
    }

    public NamespaceBO loadNamespaceBO(String appId, Env env, String clusterName, String namespaceName) {
        Namespace namespace = namespaceRepository.findByAppIdAndClusterNameAndNamespaceName(appId, clusterName, namespaceName);
        NamespaceBO namespaceBO  = transformNamespace2BO(env, namespace);

        return namespaceBO;
    }

    public boolean namespaceHasInstances(String appId, Env env, String clusterName, String namespaceName) {
        return instanceService.getInstanceCountByNamepsace(appId, env, clusterName, namespaceName) > 0;
    }

    public boolean publicAppNamespaceHasAssociatedNamespace(String publicNamespaceName, Env env) {
        return true;
//        return namespaceAPI.countPublicAppNamespaceAssociatedNamespaces(env, publicNamespaceName) > 0;
    }

    public NamespaceBO findPublicNamespaceForAssociatedNamespace(Env env, String appId,
                                                                 String clusterName, String namespaceName) {
        Namespace namespace = null;
//                namespaceAPI.findPublicNamespaceForAssociatedNamespace(env, appId, clusterName, namespaceName);

        return transformNamespace2BO(env, namespace);
    }

    public Map<String, Map<String, Boolean>> getNamespacesPublishInfo(String appId) {
        Map<String, Map<String, Boolean>> result = Maps.newHashMap();

        Set<Env> envs = portalConfig.publishTipsSupportedEnvs();
        for (Env env : envs) {
            if (portalSettings.isEnvActive(env)) {
                result.put(env.toString(), null);

//                result.put(env.toString(), namespaceAPI.getNamespacePublishInfo(env, appId));
            }
        }

        return result;
    }

    private NamespaceBO transformNamespace2BO(Env env, Namespace namespace) {
        NamespaceBO namespaceBO = new NamespaceBO();
        namespaceBO.setBaseInfo(namespace);

        String appId = namespace.getAppId();
        String clusterName = namespace.getClusterName();
        String namespaceName = namespace.getNamespaceName();

        fillAppNamespaceProperties(namespaceBO);

        List<ItemBO> itemBOs = new LinkedList<>();
        namespaceBO.setItems(itemBOs);

        //latest Release
        Release latestRelease;
        Map<String, String> releaseItems = new HashMap<>();
        latestRelease = releaseService.loadLatestRelease(appId, env, clusterName, namespaceName);
        if (latestRelease != null) {
            releaseItems = gson.fromJson(latestRelease.getConfigurations(), GsonType.CONFIG);
        }

        //not Release config items
        List<Item> items = itemService.findItems(appId, env, clusterName, namespaceName);
        int modifiedItemCnt = 0;
        for (Item Item : items) {

            ItemBO itemBO = transformItem2BO(Item, releaseItems);

            if (itemBO.isModified()) {
                modifiedItemCnt++;
            }

            itemBOs.add(itemBO);
        }

        //deleted items
        List<ItemBO> deletedItems = parseDeletedItems(items, releaseItems);
        itemBOs.addAll(deletedItems);
        modifiedItemCnt += deletedItems.size();

        namespaceBO.setItemModifiedCnt(modifiedItemCnt);

        return namespaceBO;
    }

    private void fillAppNamespaceProperties(NamespaceBO namespace) {

        Namespace namespaceDTO = namespace.getBaseInfo();
        //先从当前appId下面找,包含私有的和公共的
        AppNamespace appNamespace =
                appNamespaceService.findByAppIdAndName(namespaceDTO.getAppId(), namespaceDTO.getNamespaceName());
        //再从公共的app namespace里面找
        if (appNamespace == null) {
            appNamespace = appNamespaceService.findPublicAppNamespace(namespaceDTO.getNamespaceName());
        }

        String format;
        boolean isPublic;
        if (appNamespace == null) {
            //dirty data
            format = ConfigFileFormat.Properties.getValue();
            isPublic = true; // set to true, because public namespace allowed to delete by user
        } else {
            format = appNamespace.getFormat();
            isPublic = appNamespace.isPublic();
            namespace.setParentAppId(appNamespace.getAppId());
            namespace.setComment(appNamespace.getComment());
        }
        namespace.setFormat(format);
        namespace.setPublic(isPublic);
    }

    private List<ItemBO> parseDeletedItems(List<Item> newItems, Map<String, String> releaseItems) {
        Map<String, Item> newItemMap = BeanUtils.mapByKey("key", newItems);

        List<ItemBO> deletedItems = new LinkedList<>();
        for (Map.Entry<String, String> entry : releaseItems.entrySet()) {
            String key = entry.getKey();
            if (newItemMap.get(key) == null) {
                ItemBO deletedItem = new ItemBO();

                deletedItem.setDeleted(true);
                Item deletedItemDto = new Item();
                deletedItemDto.setKey(key);
                String oldValue = entry.getValue();
                deletedItem.setItem(deletedItemDto);

                deletedItemDto.setValue(oldValue);
                deletedItem.setModified(true);
                deletedItem.setOldValue(oldValue);
                deletedItem.setNewValue("");
                deletedItems.add(deletedItem);
            }
        }
        return deletedItems;
    }


    private ItemBO transformItem2BO(Item Item, Map<String, String> releaseItems) {
        String key = Item.getKey();
        ItemBO itemBO = new ItemBO();
        itemBO.setItem(Item);
        String newValue = Item.getValue();
        String oldValue = releaseItems.get(key);
        //new item or modified
        if (!StringUtils.isEmpty(key) && (oldValue == null || !newValue.equals(oldValue))) {
            itemBO.setModified(true);
            itemBO.setOldValue(oldValue == null ? "" : oldValue);
            itemBO.setNewValue(newValue);
        }
        return itemBO;
    }




    public Namespace findPublicNamespaceForAssociatedNamespace(String clusterName, String namespaceName) {
        AppNamespace appNamespace = appNamespaceService.findPublicNamespaceByName(namespaceName);
        if (appNamespace == null) {
            throw new BadRequestException("namespace not exist");
        }

        String appId = appNamespace.getAppId();

        Namespace namespace = findOne(appId, clusterName, namespaceName);

        //default cluster's namespace
        if (Objects.equals(clusterName, ConfigConsts.CLUSTER_NAME_DEFAULT)) {
            return namespace;
        }

        //custom cluster's namespace not exist.
        //return default cluster's namespace
        if (namespace == null) {
            return findOne(appId, ConfigConsts.CLUSTER_NAME_DEFAULT, namespaceName);
        }

        //custom cluster's namespace exist and has published.
        //return custom cluster's namespace
        Release latestActiveRelease = releaseService.findLatestActiveRelease(namespace);
        if (latestActiveRelease != null) {
            return namespace;
        }

        Namespace defaultNamespace = findOne(appId, ConfigConsts.CLUSTER_NAME_DEFAULT, namespaceName);

        //custom cluster's namespace exist but never published.
        //and default cluster's namespace not exist.
        //return custom cluster's namespace
        if (defaultNamespace == null) {
            return namespace;
        }

        //custom cluster's namespace exist but never published.
        //and default cluster's namespace exist and has published.
        //return default cluster's namespace
        Release defaultNamespaceLatestActiveRelease = releaseService.findLatestActiveRelease(defaultNamespace);
        if (defaultNamespaceLatestActiveRelease != null) {
            return defaultNamespace;
        }

        //custom cluster's namespace exist but never published.
        //and default cluster's namespace exist but never published.
        //return custom cluster's namespace
        return namespace;
    }

    public List<Namespace> findPublicAppNamespaceAllNamespaces(String namespaceName, Pageable page) {
        AppNamespace publicAppNamespace = appNamespaceService.findPublicNamespaceByName(namespaceName);

        if (publicAppNamespace == null) {
            throw new BadRequestException(
                    String.format("Public appNamespace not exists. NamespaceName = %s", namespaceName));
        }

        List<Namespace> namespaces = namespaceRepository.findByNamespaceName(namespaceName, page);

        return filterChildNamespace(namespaces);
    }

    private List<Namespace> filterChildNamespace(List<Namespace> namespaces) {
        List<Namespace> result = new LinkedList<>();

        if (CollectionUtils.isEmpty(namespaces)) {
            return result;
        }

        for (Namespace namespace : namespaces) {
            if (!isChildNamespace(namespace)) {
                result.add(namespace);
            }
        }

        return result;
    }

    public int countPublicAppNamespaceAssociatedNamespaces(String publicNamespaceName) {
        AppNamespace publicAppNamespace = appNamespaceService.findPublicNamespaceByName(publicNamespaceName);

        if (publicAppNamespace == null) {
            throw new BadRequestException(
                    String.format("Public appNamespace not exists. NamespaceName = %s", publicNamespaceName));
        }

        return namespaceRepository.countByNamespaceNameAndAppIdNot(publicNamespaceName, publicAppNamespace.getAppId());
    }

    public List<Namespace> findNamespaces(String appId, String clusterName) {
        List<Namespace> namespaces = namespaceRepository.findByAppIdAndClusterNameOrderByIdAsc(appId, clusterName);
        if (namespaces == null) {
            return Collections.emptyList();
        }
        return namespaces;
    }

    public List<Namespace> findByAppIdAndNamespaceName(String appId, String namespaceName) {
        return namespaceRepository.findByAppIdAndNamespaceNameOrderByIdAsc(appId, namespaceName);
    }

    public Namespace findChildNamespace(String appId, String parentClusterName, String namespaceName, String env) {
        List<Namespace> namespaces = findByAppIdAndNamespaceName(appId, namespaceName);
        if (CollectionUtils.isEmpty(namespaces) || namespaces.size() == 1) {
            return null;
        }

        List<ClusterEntity> childClusterEntities = clusterService.findChildClusters(appId, parentClusterName, env);
        if (CollectionUtils.isEmpty(childClusterEntities)) {
            return null;
        }

        Set<String> childClusterNames = childClusterEntities.stream().map(ClusterEntity::getName).collect(Collectors.toSet());
        //the child namespace is the intersection of the child clusters and child namespaces
        for (Namespace namespace : namespaces) {
            if (childClusterNames.contains(namespace.getClusterName())) {
                return namespace;
            }
        }

        return null;
    }

    public Namespace findChildNamespace(Namespace parentNamespace) {
        String appId = parentNamespace.getAppId();
        String parentClusterName = parentNamespace.getClusterName();
        String namespaceName = parentNamespace.getNamespaceName();

        return findChildNamespace(appId, parentClusterName, namespaceName, null);

    }

//    public Namespace findParentNamespace(String appId, String clusterName, String namespaceName) {
//        return findParentNamespace(new Namespace(appId, clusterName, namespaceName));
//    }

    public Namespace findParentNamespace(Namespace namespace, String env) {
        String appId = namespace.getAppId();
        String namespaceName = namespace.getNamespaceName();

        ClusterEntity clusterEntity = clusterService.findOne(appId, namespace.getClusterName(), env);
        if (clusterEntity == null || clusterEntity.getParentClusterId() == 0) {
            return null;

        }

        ClusterEntity parentClusterEntity = clusterService.findOne(clusterEntity.getParentClusterId());
        return findOne(appId, parentClusterEntity.getName(), namespaceName);

    }

    public boolean isChildNamespace(String appId, String clusterName, String namespaceName) {
        return isChildNamespace(new Namespace(appId, clusterName, namespaceName));
    }

    public boolean isChildNamespace(Namespace namespace) {
        //TODO fix
        return findParentNamespace(namespace, null) != null;
    }

    public boolean isNamespaceUnique(String appId, String cluster, String namespace) {
        Objects.requireNonNull(appId, "AppId must not be null");
        Objects.requireNonNull(cluster, "ClusterEntity must not be null");
        Objects.requireNonNull(namespace, "Namespace must not be null");
        return ObjectUtils.isEmpty(
                namespaceRepository.findByAppIdAndClusterNameAndNamespaceName(appId, cluster, namespace));
    }


    @Transactional
    public Namespace save(Namespace entity) {
        if (!isNamespaceUnique(entity.getAppId(), entity.getClusterName(), entity.getNamespaceName())) {
            throw new ServiceException("namespace not unique");
        }
        entity.setId(0);//protection
        Namespace namespace = namespaceRepository.save(entity);

        auditService.audit(Namespace.class.getSimpleName(), namespace.getId(), AuditEntity.OP.INSERT,
                namespace.getDataChangeCreatedBy());

        return namespace;
    }

    @Transactional
    public Namespace update(Namespace namespace) {
        Namespace managedNamespace = namespaceRepository.findByAppIdAndClusterNameAndNamespaceName(
                namespace.getAppId(), namespace.getClusterName(), namespace.getNamespaceName());
        BeanUtils.copyEntityProperties(namespace, managedNamespace);
        managedNamespace = namespaceRepository.save(managedNamespace);

        auditService.audit(Namespace.class.getSimpleName(), managedNamespace.getId(), AuditEntity.OP.UPDATE,
                managedNamespace.getDataChangeLastModifiedBy());

        return managedNamespace;
    }


    public Map<String, Boolean> namespacePublishInfo(String appId) {
        List<ClusterEntity> clusterEntities = clusterService.findParentClusters(appId);
        if (CollectionUtils.isEmpty(clusterEntities)) {
            throw new BadRequestException("app not exist");
        }

        Map<String, Boolean> clusterHasNotPublishedItems = Maps.newHashMap();

        for (ClusterEntity clusterEntity : clusterEntities) {
            String clusterName = clusterEntity.getName();
            List<Namespace> namespaces = findNamespaces(appId, clusterName);

            for (Namespace namespace : namespaces) {
                boolean isNamespaceNotPublished = isNamespaceNotPublished(namespace);

                if (isNamespaceNotPublished) {
                    clusterHasNotPublishedItems.put(clusterName, true);
                    break;
                }
            }

            clusterHasNotPublishedItems.putIfAbsent(clusterName, false);
        }

        return clusterHasNotPublishedItems;
    }

    private boolean isNamespaceNotPublished(Namespace namespace) {

        Release latestRelease = releaseService.findLatestActiveRelease(namespace);
        long namespaceId = namespace.getId();

        if (latestRelease == null) {
            Item lastItem = itemService.findLastOne(namespaceId);
            return lastItem != null;
        }

        Date lastPublishTime = latestRelease.getDataChangeLastModifiedTime();
        List<Item> itemsModifiedAfterLastPublish = itemService.findItemsModifiedAfterDate(namespaceId, lastPublishTime);

        if (CollectionUtils.isEmpty(itemsModifiedAfterLastPublish)) {
            return false;
        }

        Map<String, String> publishedConfiguration = gson.fromJson(latestRelease.getConfigurations(), GsonType.CONFIG);
        for (Item item : itemsModifiedAfterLastPublish) {
            if (!Objects.equals(item.getValue(), publishedConfiguration.get(item.getKey()))) {
                return true;
            }
        }

        return false;
    }

    public Namespace findByAppIdAndClusterNameAndNamespaceName(String appId, String clusterName, String namespaceName) {
        return namespaceRepository.findByAppIdAndClusterNameAndNamespaceName(appId, clusterName, namespaceName);
    }
}
