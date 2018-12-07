package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.common.entity.App;
import com.ctrip.framework.apollo.common.entity.AppNamespace;
import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.exception.ServiceException;
import com.ctrip.framework.apollo.core.ConfigConsts;
import com.ctrip.framework.apollo.core.enums.ConfigFileFormat;
import com.ctrip.framework.apollo.core.utils.StringUtils;
import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import com.ctrip.framework.apollo.portal.entity.ClusterEntity;
import com.ctrip.framework.apollo.portal.entity.Namespace;
import com.ctrip.framework.apollo.portal.repository.AppNamespaceRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import java.util.Set;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import org.springframework.util.CollectionUtils;

@Service
public class AppNamespaceService {

  private static final int PRIVATE_APP_NAMESPACE_NOTIFICATION_COUNT = 5;
  private static final Joiner APP_NAMESPACE_JOINER = Joiner.on(",").skipNulls();

  @Autowired
  private UserInfoHolder userInfoHolder;
  @Autowired
  private AppNamespaceRepository appNamespaceRepository;
  @Autowired
  private RoleInitializationService roleInitializationService;
  @Autowired
  private AppService appService;
  @Autowired
  private RolePermissionService rolePermissionService;
   @Autowired
  private NamespaceService namespaceService;
  @Autowired
  private ClusterService clusterService;
  @Autowired
  private AuditService auditService;

  @Transactional
  public void batchDelete(String appId, String operator) {
    appNamespaceRepository.batchDeleteByAppId(appId, operator);
  }

  @Transactional
  public void deleteAppNamespace(AppNamespace appNamespace, String operator) {
    String appId = appNamespace.getAppId();
    String namespaceName = appNamespace.getName();


    // 1. delete namespaces
    List<Namespace> namespaces = namespaceService.findByAppIdAndNamespaceName(appId, namespaceName);

    if (namespaces != null) {
      for (Namespace namespace : namespaces) {
        namespaceService.deleteNamespace(namespace, operator);
      }
    }

    // 2. delete app namespace
    appNamespaceRepository.delete(appId, namespaceName, operator);
  }


    public AppNamespace findPublicNamespaceByName(String namespaceName) {
    Preconditions.checkArgument(namespaceName != null, "Namespace must not be null");
    return appNamespaceRepository.findByNameAndIsPublicTrue(namespaceName);
  }


  public List<AppNamespace> findByAppId(String appId) {
    return appNamespaceRepository.findByAppId(appId);
  }

  /**
   * 公共的app ns,能被其它项目关联到的app ns
   */
  public List<AppNamespace> findPublicAppNamespaces() {
    return appNamespaceRepository.findByIsPublicTrue();
  }

  public AppNamespace findPublicAppNamespace(String namespaceName) {
    List<AppNamespace> appNamespaces = appNamespaceRepository.findByNameAndIsPublic(namespaceName, true);

    if (CollectionUtils.isEmpty(appNamespaces)) {
      return null;
    }

    return appNamespaces.get(0);
  }

  private List<AppNamespace> findAllPrivateAppNamespaces(String namespaceName) {
    return appNamespaceRepository.findByNameAndIsPublic(namespaceName, false);
  }

  public AppNamespace findByAppIdAndName(String appId, String namespaceName) {
    return appNamespaceRepository.findByAppIdAndName(appId, namespaceName);
  }

  @Transactional
  public void createDefaultAppNamespace(String appId, String createBy) {
    if (!isAppNamespaceNameUnique(appId, ConfigConsts.NAMESPACE_APPLICATION)) {
      throw new ServiceException("appnamespace not unique");
    }
    AppNamespace appNs = new AppNamespace();
    appNs.setAppId(appId);
    appNs.setName(ConfigConsts.NAMESPACE_APPLICATION);
    appNs.setComment("default app namespace");
    appNs.setFormat(ConfigFileFormat.Properties.getValue());
    appNs.setDataChangeCreatedBy(createBy);
    appNs.setDataChangeLastModifiedBy(createBy);
    appNamespaceRepository.save(appNs);

    auditService.audit(AppNamespace.class.getSimpleName(), appNs.getId(), AuditEntity.OP.INSERT,
            createBy);
  }

  @Transactional
  public void createDefaultAppNamespace(String appId) {
    if (!isAppNamespaceNameUnique(appId, ConfigConsts.NAMESPACE_APPLICATION)) {
      throw new BadRequestException(String.format("App already has application namespace. AppId = %s", appId));
    }

    AppNamespace appNs = new AppNamespace();
    appNs.setAppId(appId);
    appNs.setName(ConfigConsts.NAMESPACE_APPLICATION);
    appNs.setComment("default app namespace");
    appNs.setFormat(ConfigFileFormat.Properties.getValue());
    String userId = userInfoHolder.getUser().getUserId();
    appNs.setDataChangeCreatedBy(userId);
    appNs.setDataChangeLastModifiedBy(userId);

    appNamespaceRepository.save(appNs);
  }

  public boolean isAppNamespaceNameUnique(String appId, String namespaceName) {
    Objects.requireNonNull(appId, "AppId must not be null");
    Objects.requireNonNull(namespaceName, "Namespace must not be null");
    return Objects.isNull(appNamespaceRepository.findByAppIdAndName(appId, namespaceName));
  }

  public AppNamespace createAppNamespaceInLocal(AppNamespace appNamespace) {
    return createAppNamespaceInLocal(appNamespace, true);
  }

  @Transactional
  public AppNamespace createAppNamespaceInLocal(AppNamespace appNamespace, boolean appendNamespacePrefix) {
    String appId = appNamespace.getAppId();

    //add app org id as prefix
    App app = appService.load(appId);
    if (app == null) {
      throw new BadRequestException("App not exist. AppId = " + appId);
    }

    StringBuilder appNamespaceName = new StringBuilder();
    //add prefix postfix
    appNamespaceName
        .append(appNamespace.isPublic() && appendNamespacePrefix ? app.getOrgId() + "." : "")
        .append(appNamespace.getName())
        .append(appNamespace.formatAsEnum() == ConfigFileFormat.Properties ? "" : "." + appNamespace.getFormat());
    appNamespace.setName(appNamespaceName.toString());

    if (appNamespace.getComment() == null) {
      appNamespace.setComment("");
    }

    if (!ConfigFileFormat.isValidFormat(appNamespace.getFormat())) {
     throw new BadRequestException("Invalid namespace format. format must be properties、json、yaml、yml、xml");
    }

    String operator = appNamespace.getDataChangeCreatedBy();
    if (StringUtils.isEmpty(operator)) {
      operator = userInfoHolder.getUser().getUserId();
      appNamespace.setDataChangeCreatedBy(operator);
    }

    appNamespace.setDataChangeLastModifiedBy(operator);

    // globally uniqueness check
    if (appNamespace.isPublic()) {
      checkAppNamespaceGlobalUniqueness(appNamespace);
    }

    if (!appNamespace.isPublic() &&
        appNamespaceRepository.findByAppIdAndName(appNamespace.getAppId(), appNamespace.getName()) != null) {
      throw new BadRequestException("Private AppNamespace " + appNamespace.getName() + " already exists!");
    }

    AppNamespace createdAppNamespace = appNamespaceRepository.save(appNamespace);
    //查询该app的集群，并且保存集群对应 namespace到namespace中
    List<ClusterEntity> clusterEntities = clusterService.findClusters(appId);
    for(ClusterEntity cluster : clusterEntities) {
      Namespace namespaceEntity = new Namespace();
      BeanUtils.copyProperties(appNamespace, namespaceEntity);
      namespaceEntity.setClusterName(cluster.getName());
      namespaceEntity.setNamespaceName(appNamespaceName.toString());
      namespaceService.save(namespaceEntity);
    }
    roleInitializationService.initNamespaceRoles(appNamespace.getAppId(), appNamespace.getName(), operator);
    roleInitializationService.initNamespaceEnvRoles(appNamespace.getAppId(), appNamespace.getName(), operator);

    return createdAppNamespace;
  }

  private void checkAppNamespaceGlobalUniqueness(AppNamespace appNamespace) {
    AppNamespace publicAppNamespace = findPublicAppNamespace(appNamespace.getName());
    if (publicAppNamespace != null) {
      throw new BadRequestException("Public AppNamespace " + appNamespace.getName() + " already exists in appId: " + publicAppNamespace.getAppId() + "!");
    }

    List<AppNamespace> privateAppNamespaces = findAllPrivateAppNamespaces(appNamespace.getName());

    if (!CollectionUtils.isEmpty(privateAppNamespaces)) {
      Set<String> appIds = Sets.newHashSet();
      for (AppNamespace ans : privateAppNamespaces) {
        appIds.add(ans.getAppId());
        if (appIds.size() == PRIVATE_APP_NAMESPACE_NOTIFICATION_COUNT) {
          break;
        }
      }

      throw new BadRequestException(
          "Public AppNamespace " + appNamespace.getName() + " already exists as private AppNamespace in appId: "
              + APP_NAMESPACE_JOINER.join(appIds) + ", etc. Please select another name!");
    }
  }


  @Transactional
  public AppNamespace deleteAppNamespace(String appId, String namespaceName) {
    AppNamespace appNamespace = appNamespaceRepository.findByAppIdAndName(appId, namespaceName);
    if (appNamespace == null) {
      throw new BadRequestException(
          String.format("AppNamespace not exists. AppId = %s, NamespaceName = %s", appId, namespaceName));
    }

    String operator = userInfoHolder.getUser().getUserId();

    // this operator is passed to com.ctrip.framework.apollo.portal.listener.DeletionListener.onAppNamespaceDeletionEvent
    appNamespace.setDataChangeLastModifiedBy(operator);

    // delete app namespace in portal db
    appNamespaceRepository.delete(appId, namespaceName, operator);

    // delete Permission and Role related data
    rolePermissionService.deleteRolePermissionsByAppIdAndNamespace(appId, namespaceName, operator);

    return appNamespace;
  }

  public void batchDeleteByAppId(String appId, String operator) {
    appNamespaceRepository.batchDeleteByAppId(appId, operator);
  }
}
