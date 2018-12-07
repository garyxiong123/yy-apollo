package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.common.entity.AppNamespace;
import com.ctrip.framework.apollo.common.exception.ServiceException;
import com.ctrip.framework.apollo.core.ConfigConsts;
import com.ctrip.framework.apollo.core.enums.ConfigFileFormat;
import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import com.ctrip.framework.apollo.portal.entity.ClusterEntity;
import com.ctrip.framework.apollo.portal.entity.Namespace;
import com.google.common.collect.Lists;

import com.ctrip.framework.apollo.common.dto.AppDTO;
import com.ctrip.framework.apollo.common.entity.App;
import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.core.enums.Env;
//import com.ctrip.framework.apollo.portal.api.AdminServiceAPI;
import com.ctrip.framework.apollo.portal.constant.TracerEventType;
import com.ctrip.framework.apollo.bo.UserInfo;
import com.ctrip.framework.apollo.vo.EnvClusterInfo;
import com.ctrip.framework.apollo.portal.repository.AppRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;
import com.ctrip.framework.apollo.portal.spi.UserService;
import com.ctrip.framework.apollo.tracer.Tracer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Service
public class AppService {

  @Autowired
  private UserInfoHolder userInfoHolder;
//  @Autowired
//  private AdminServiceAPI.AppAPI appAPI;
  @Autowired
  private AppRepository appRepository;
  @Autowired
  private ClusterService clusterService;
  @Autowired
  private AppNamespaceService appNamespaceService;
  @Autowired
  private NamespaceService namespaceService;
  @Autowired
  private RoleInitializationService roleInitializationService;
  @Autowired
  private RolePermissionService rolePermissionService;
  @Autowired
  private FavoriteService favoriteService;
  @Autowired
  private UserService userService;
  @Autowired
  private AuditService auditService;


  @Transactional
  public void delete(long id, String operator) {
    App app = appRepository.findByAppId(String.valueOf(id));
    if (app == null) {
      return;
    }

    app.setDeleted(true);
    app.setDataChangeLastModifiedBy(operator);
    appRepository.save(app);

    auditService.audit(App.class.getSimpleName(), id, AuditEntity.OP.DELETE, operator);
  }

    public boolean isAppIdUnique(String appId) {
    Objects.requireNonNull(appId, "AppId must not be null");
    return Objects.isNull(appRepository.findByAppId(appId));
  }


    @Transactional
  public App save(App entity) {
    if (!isAppIdUnique(entity.getAppId())) {
      throw new ServiceException("appId not unique");
    }
    entity.setId(0);//protection
    App app = appRepository.save(entity);

    auditService.audit(App.class.getSimpleName(), app.getId(), AuditEntity.OP.INSERT,
        app.getDataChangeCreatedBy());

    return app;
  }


  public List<App> findAll() {
    Iterable<App> apps = appRepository.findAll();
    if (apps == null) {
      return Collections.emptyList();
    }
    return Lists.newArrayList((apps));
  }

  public List<App> findByAppIds(Set<String> appIds) {
    return appRepository.findByAppIdIn(appIds);
  }

  public List<App> findByAppIds(Set<String> appIds, Pageable pageable) {
    return appRepository.findByAppIdIn(appIds, pageable);
  }

  public List<App> findByOwnerName(String ownerName, Pageable page) {
    return appRepository.findByOwnerName(ownerName, page);
  }

  public App load(String appId) {
    return appRepository.findByAppId(appId);
  }


  //加载App
  public AppDTO load(Env env, String appId) {
//    return appAPI.loadApp(env, appId);
    return null;
  }

  public void createAppInRemote(Env env, App app) {
    String username = userInfoHolder.getUser().getUserId();
    app.setDataChangeCreatedBy(username);
    app.setDataChangeLastModifiedBy(username);

    AppDTO appDTO = BeanUtils.transfrom(AppDTO.class, app);
//    appAPI.createApp(env, appDTO);
  }

  @Transactional
  public App createAppInLocal(App app) {
    String appId = app.getAppId();
    App managedApp = appRepository.findByAppId(appId);

    if (managedApp != null) {
      throw new BadRequestException(String.format("App already exists. AppId = %s", appId));
    }

    UserInfo owner = userService.findByUserId(app.getOwnerName());
    if (owner == null) {
      throw new BadRequestException("Application's owner not exist.");
    }
    app.setOwnerEmail(owner.getEmail());

    String operator = userInfoHolder.getUser().getUserId();
    app.setDataChangeCreatedBy(operator);
    app.setDataChangeLastModifiedBy(operator);

    App createdApp = appRepository.save(app);

    appNamespaceService.createDefaultAppNamespace(appId);

    createDefaultNamespace(appId);

    //创建默认集群

    createDefaultCluster(appId);
    roleInitializationService.initAppRoles(createdApp);
    Tracer.logEvent(TracerEventType.CREATE_APP, appId);

    return createdApp;
  }

  private void createDefaultCluster(String appId) {
    ClusterEntity clusterEntity = new ClusterEntity();
    clusterEntity.setAppId(appId);

    clusterService.createDefaultCluster(appId, userInfoHolder.getUser().getUserId());

  }

  private void createDefaultNamespace(String appId) {

    Namespace namespaceEntity = new Namespace();
    namespaceEntity.setAppId(appId);
    String userId = userInfoHolder.getUser().getUserId();
    namespaceEntity.setClusterName(ConfigConsts.CLUSTER_NAME_DEFAULT);
    namespaceEntity.setNamespaceName(ConfigConsts.NAMESPACE_APPLICATION);
    namespaceEntity.setDataChangeCreatedBy(userId);
    namespaceEntity.setDataChangeLastModifiedBy(userId);
    namespaceService.save(namespaceEntity);
  }

  @Transactional
  public App updateAppInLocal(App app) {
    String appId = app.getAppId();

    App managedApp = appRepository.findByAppId(appId);
    if (managedApp == null) {
      throw new BadRequestException(String.format("App not exists. AppId = %s", appId));
    }

    managedApp.setName(app.getName());
    managedApp.setOrgId(app.getOrgId());
    managedApp.setOrgName(app.getOrgName());

    String ownerName = app.getOwnerName();
    UserInfo owner = userService.findByUserId(ownerName);
    if (owner == null) {
      throw new BadRequestException(String.format("App's owner not exists. owner = %s", ownerName));
    }
    managedApp.setOwnerName(owner.getUserId());
    managedApp.setOwnerEmail(owner.getEmail());

    String operator = userInfoHolder.getUser().getUserId();
    managedApp.setDataChangeLastModifiedBy(operator);

    return appRepository.save(managedApp);
  }

  public EnvClusterInfo createEnvNavNode(Env env, String appId) {
    EnvClusterInfo node = new EnvClusterInfo(env);
    node.setClusters(clusterService.findClusters(env, appId));
    return node;
  }

  @Transactional
  public App deleteAppInLocal(String appId) {
    App managedApp = appRepository.findByAppId(appId);
    if (managedApp == null) {
      throw new BadRequestException(String.format("App not exists. AppId = %s", appId));
    }
    String operator = userInfoHolder.getUser().getUserId();

    //this operator is passed to com.ctrip.framework.apollo.portal.listener.DeletionListener.onAppDeletionEvent
    managedApp.setDataChangeLastModifiedBy(operator);

    //删除portal数据库中的app
    appRepository.deleteApp(appId, operator);

    //删除portal数据库中的appNamespace
    appNamespaceService.batchDeleteByAppId(appId, operator);

    //删除portal数据库中的收藏表
    favoriteService.batchDeleteByAppId(appId, operator);

    //删除portal数据库中Permission、Role相关数据
    rolePermissionService.deleteRolePermissionsByAppId(appId, operator);

    return managedApp;
  }
}
