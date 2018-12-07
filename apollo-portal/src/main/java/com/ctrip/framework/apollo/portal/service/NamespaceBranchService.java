package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.bo.ItemChangeSets;
import com.ctrip.framework.apollo.common.constants.NamespaceBranchStatus;
import com.ctrip.framework.apollo.common.constants.ReleaseOperation;
import com.ctrip.framework.apollo.common.constants.ReleaseOperationContext;
import com.ctrip.framework.apollo.common.dto.GrayReleaseRuleDTO;
import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.utils.GrayReleaseRuleItemTransformer;
import com.ctrip.framework.apollo.common.utils.UniqueKeyGenerator;
import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.portal.component.ItemsComparator;
import com.ctrip.framework.apollo.portal.constant.TracerEventType;
import com.ctrip.framework.apollo.portal.entity.*;
import com.ctrip.framework.apollo.bo.NamespaceBO;
import com.ctrip.framework.apollo.portal.repository.GrayReleaseRuleRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;
import com.ctrip.framework.apollo.tracer.Tracer;

import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Map;


@Service
public class NamespaceBranchService {

    @Autowired
    private ItemsComparator itemsComparator;
    @Autowired
    private UserInfoHolder userInfoHolder;
    @Autowired
    private NamespaceService namespaceService;
    @Autowired
    private ItemService itemService;
//    @Autowired
//    private InstanceAPI.NamespaceBranchAPI namespaceBranchAPI;
    @Autowired
    private ReleaseService releaseService;

    @Autowired
    private AuditService auditService;
    @Autowired
    private GrayReleaseRuleRepository grayReleaseRuleRepository;
    @Autowired
    private ClusterService clusterService;
    @Autowired
    private ReleaseHistoryService releaseHistoryService;

    @Transactional
    public GrayReleaseRule updateRulesReleaseId(String appId, String clusterName,
                                                String namespaceName, String branchName,
                                                long latestReleaseId, String operator) {
        GrayReleaseRule oldRules = grayReleaseRuleRepository.
                findTopByAppIdAndClusterNameAndNamespaceNameAndBranchNameOrderByIdDesc(appId, clusterName, namespaceName, branchName);

        if (oldRules == null) {
            return null;
        }
        return oldRules;
    }

    @Transactional
    public Namespace createBranch(String appId, Env env, String parentClusterName, String namespaceName) {
        String operator = userInfoHolder.getUser().getUserId();
        return createBranch(appId, env, parentClusterName, namespaceName, operator);
    }

    @Transactional
    public Namespace createBranch(String appId, Env env, String parentClusterName, String namespaceName, String operator) {

        Namespace childNamespace = findBranch(appId, env,parentClusterName, namespaceName).getBaseInfo();
        if (childNamespace != null){
            throw new BadRequestException("namespace already has branch");
        }

        ClusterEntity parentCluster = clusterService.findOne(appId, parentClusterName);
        if (parentCluster == null || parentCluster.getParentClusterId() != 0) {
            throw new BadRequestException("cluster not exist or illegal cluster");
        }

        //create child cluster
        ClusterEntity childCluster = createChildCluster(appId, parentCluster, namespaceName, operator);

        ClusterEntity createdChildCluster = clusterService.saveWithoutInstanceOfAppNamespaces(childCluster);

        //create child namespace
        childNamespace = createNamespaceBranch(appId, createdChildCluster.getName(),
                namespaceName, operator);
        return namespaceService.save(childNamespace);


    }

    private ClusterEntity createChildCluster(String appId, ClusterEntity parentCluster,
                                       String namespaceName, String operator) {

        ClusterEntity childCluster = new ClusterEntity();
        childCluster.setAppId(appId);
        childCluster.setParentClusterId(parentCluster.getId());
        childCluster.setName(UniqueKeyGenerator.generate(appId, parentCluster.getName(), namespaceName));
        childCluster.setDataChangeCreatedBy(operator);
        childCluster.setDataChangeLastModifiedBy(operator);

        return childCluster;
    }


    private Namespace createNamespaceBranch(String appId, String clusterName, String namespaceName, String operator) {
        Namespace childNamespace = new Namespace();
        childNamespace.setAppId(appId);
        childNamespace.setClusterName(clusterName);
        childNamespace.setNamespaceName(namespaceName);
        childNamespace.setDataChangeLastModifiedBy(operator);
        childNamespace.setDataChangeCreatedBy(operator);
        return childNamespace;
    }

    public GrayReleaseRuleDTO findBranchGrayRules(String appId, Env env, String clusterName,
                                                  String namespaceName, String branchName) {
//        return namespaceBranchAPI.findBranchGrayRules(appId, env, clusterName, namespaceName, branchName);
        return null;

    }

    public void updateBranchGrayRules(String appId, Env env, String clusterName, String namespaceName,
                                      String branchName, GrayReleaseRuleDTO rules) {

        String operator = userInfoHolder.getUser().getUserId();
        updateBranchGrayRules(appId, env, clusterName, namespaceName, branchName, rules, operator);
    }

    public void updateBranchGrayRules(String appId, Env env, String clusterName, String namespaceName,
                                      String branchName, GrayReleaseRuleDTO rules, String operator) {
        rules.setDataChangeCreatedBy(operator);
        rules.setDataChangeLastModifiedBy(operator);

//        namespaceBranchAPI.updateBranchGrayRules(appId, env, clusterName, namespaceName, branchName, rules);

        Tracer.logEvent(TracerEventType.UPDATE_GRAY_RELEASE_RULE,
                String.format("%s+%s+%s+%s", appId, env, clusterName, namespaceName));
    }

    public void deleteBranch(String appId, Env env, String clusterName, String namespaceName,
                             String branchName) {

        String operator = userInfoHolder.getUser().getUserId();
        deleteBranch(appId, env, clusterName, namespaceName, branchName, operator);
    }

    public void deleteBranch(String appId, Env env, String clusterName, String namespaceName,
                             String branchName, String operator) {
//        namespaceBranchAPI.deleteBranch(appId, env, clusterName, namespaceName, branchName, operator);

        Tracer.logEvent(TracerEventType.DELETE_GRAY_RELEASE,
                String.format("%s+%s+%s+%s", appId, env, clusterName, namespaceName));
    }




    @Transactional
    public void deleteBranch(String appId, String clusterName, String namespaceName,
                             String branchName, int branchStatus, String operator) {
        ClusterEntity toDeleteClusterEntity = clusterService.findOne(appId, branchName);
        if (toDeleteClusterEntity == null) {
            return;
        }

        Release latestBranchRelease = releaseService.findLatestActiveRelease(appId, branchName, namespaceName);

        long latestBranchReleaseId = latestBranchRelease != null ? latestBranchRelease.getId() : 0;

        //update branch rules
        GrayReleaseRule deleteRule = new GrayReleaseRule();
        deleteRule.setRules("[]");
        deleteRule.setAppId(appId);
        deleteRule.setClusterName(clusterName);
        deleteRule.setNamespaceName(namespaceName);
        deleteRule.setBranchName(branchName);
        deleteRule.setBranchStatus(branchStatus);
        deleteRule.setDataChangeLastModifiedBy(operator);
        deleteRule.setDataChangeCreatedBy(operator);

        doUpdateBranchGrayRules(appId, clusterName, namespaceName, branchName, deleteRule, false, -1);

        //delete branch cluster
        clusterService.delete(toDeleteClusterEntity.getId(), operator);

        int releaseOperation = branchStatus == NamespaceBranchStatus.MERGED ? ReleaseOperation
                .GRAY_RELEASE_DELETED_AFTER_MERGE : ReleaseOperation.ABANDON_GRAY_RELEASE;

        releaseHistoryService.createReleaseHistory(appId, clusterName, namespaceName, branchName, latestBranchReleaseId,
                latestBranchReleaseId, releaseOperation, null, operator);

        auditService.audit("Branch", toDeleteClusterEntity.getId(), AuditEntity.OP.DELETE, operator);
    }


    private void doUpdateBranchGrayRules(String appId, String clusterName, String namespaceName,
                                         String branchName, GrayReleaseRule newRules, boolean recordReleaseHistory, int releaseOperation) {
        GrayReleaseRule oldRules = grayReleaseRuleRepository
                .findTopByAppIdAndClusterNameAndNamespaceNameAndBranchNameOrderByIdDesc(appId, clusterName, namespaceName, branchName);

        Release latestBranchRelease = releaseService.findLatestActiveRelease(appId, branchName, namespaceName);

        long latestBranchReleaseId = latestBranchRelease != null ? latestBranchRelease.getId() : 0;

        newRules.setReleaseId(latestBranchReleaseId);

        grayReleaseRuleRepository.save(newRules);

        //delete old rules
        if (oldRules != null) {
            grayReleaseRuleRepository.delete(oldRules);
        }

        if (recordReleaseHistory) {
            Map<String, Object> releaseOperationContext = Maps.newHashMap();
            releaseOperationContext.put(ReleaseOperationContext.RULES, GrayReleaseRuleItemTransformer
                    .batchTransformFromJSON(newRules.getRules()));
            if (oldRules != null) {
                releaseOperationContext.put(ReleaseOperationContext.OLD_RULES,
                        GrayReleaseRuleItemTransformer.batchTransformFromJSON(oldRules.getRules()));
            }
            releaseHistoryService.createReleaseHistory(appId, clusterName, namespaceName, branchName, latestBranchReleaseId,
                    latestBranchReleaseId, releaseOperation, releaseOperationContext, newRules.getDataChangeLastModifiedBy());
        }
    }

    public Release merge(String appId, Env env, String clusterName, String namespaceName,
                            String branchName, String title, String comment,
                            boolean isEmergencyPublish, boolean deleteBranch) {
        String operator = userInfoHolder.getUser().getUserId();
        return merge(appId, env, clusterName, namespaceName, branchName, title, comment, isEmergencyPublish, deleteBranch, operator);
    }

    public Release merge(String appId, Env env, String clusterName, String namespaceName,
                            String branchName, String title, String comment,
                            boolean isEmergencyPublish, boolean deleteBranch, String operator) {

        ItemChangeSets changeSets = calculateBranchChangeSet(appId, env, clusterName, namespaceName, branchName, operator);

        Release mergedResult =
                releaseService.updateAndPublish(appId, env, clusterName, namespaceName, title, comment,
                        branchName, isEmergencyPublish, deleteBranch, changeSets);

        Tracer.logEvent(TracerEventType.MERGE_GRAY_RELEASE,
                String.format("%s+%s+%s+%s", appId, env, clusterName, namespaceName));

        return mergedResult;
    }

    private ItemChangeSets calculateBranchChangeSet(String appId, Env env, String clusterName, String namespaceName,
                                                    String branchName, String operator) {
        NamespaceBO parentNamespace = namespaceService.loadNamespaceBO(appId, env, clusterName, namespaceName);

        if (parentNamespace == null) {
            throw new BadRequestException("base namespace not existed");
        }

        if (parentNamespace.getItemModifiedCnt() > 0) {
            throw new BadRequestException("Merge operation failed. Because master has modified items");
        }

        List<Item> masterItems = itemService.findItems(appId, env, clusterName, namespaceName);

        List<Item> branchItems = itemService.findItems(appId, env, branchName, namespaceName);

        ItemChangeSets changeSets = itemsComparator.compareIgnoreBlankAndCommentItem(parentNamespace.getBaseInfo().getId(),
                masterItems, branchItems);
        changeSets.setDeleteItems(Collections.emptyList());
        changeSets.setDataChangeLastModifiedBy(operator);
        return changeSets;
    }


    public Namespace findBranchBaseInfo(String appId, Env env, String clusterName, String namespaceName) {

        return namespaceService.findByAppIdAndClusterNameAndNamespaceName(appId,clusterName,namespaceName );
    }

    public NamespaceBO findBranch(String appId, Env env, String clusterName, String namespaceName) {
        Namespace namespace = findBranchBaseInfo(appId, env, clusterName, namespaceName);
        if (namespace == null) {
            return null;
        }
        return namespaceService.loadNamespaceBO(appId, env, namespace.getClusterName(), namespaceName);
    }

}
