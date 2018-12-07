package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.exception.ServiceException;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.core.ConfigConsts;
import com.ctrip.framework.apollo.core.enums.Env;
//import com.ctrip.framework.apollo.portal.api.AdminServiceAPI;
import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import com.ctrip.framework.apollo.portal.entity.ClusterEntity;
import com.ctrip.framework.apollo.portal.repository.ClusterRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;

import com.google.common.base.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Service
public class ClusterService {

  @Autowired
  private UserInfoHolder userInfoHolder;
//  @Autowired
//  private AdminServiceAPI.ClusterAPI clusterAPI;

    @Autowired
  private ClusterRepository clusterRepository;
  @Autowired
  private AuditService auditService;
  @Autowired
  private NamespaceService namespaceService;


  public List<ClusterEntity> findClusters(Env env, String appId) {

    return clusterRepository.findByAppId(appId);
  }



  public ClusterEntity createCluster(Env env, ClusterEntity cluster) {
//    if (!clusterAPI.isClusterUnique(cluster.getAppId(), env, cluster.getName())) {
//      throw new BadRequestException(String.format("cluster %s already exists.", cluster.getName()));
//    }
//    ClusterEntity ClusterEntity = clusterAPI.create(env, cluster);
//
//    Tracer.logEvent(TracerEventType.CREATE_CLUSTER, cluster.getAppId(), "0", cluster.getName());
//
//    return ClusterEntity;
//    cluster.setEnv(env.name());

     return clusterRepository.save(cluster);
  }

  public void deleteCluster(Env env, String appId, String clusterName){
//    clusterAPI.delete(env, appId, clusterName, userInfoHolder.getUser().getUserId());
    ClusterEntity clusterEntity = new ClusterEntity();
//    clusterEntity.setEnv(env.name());
    clusterEntity.setAppId(appId);
    clusterRepository.delete(clusterEntity);
    return ;
  }

  public ClusterEntity loadCluster(String appId, Env env, String clusterName){
//    return clusterAPI.loadCluster(appId, env, clusterName);
    return clusterRepository.findByAppIdAndName(appId, clusterName);
  }



  public boolean isClusterNameUnique(String appId, String clusterName) {
    Objects.requireNonNull(appId, "AppId must not be null");
    Objects.requireNonNull(clusterName, "ClusterName must not be null");
    return Objects.isNull(clusterRepository.findByAppIdAndName(appId, clusterName));
  }

  public ClusterEntity findOne(String appId, String name) {
    return clusterRepository.findByAppIdAndName(appId, name);
  }

  public ClusterEntity findOne(long clusterId) {
    return clusterRepository.findById(clusterId).get();
  }

  public List<ClusterEntity> findParentClusters(String appId) {
    if (Strings.isNullOrEmpty(appId)) {
      return Collections.emptyList();
    }

    List<ClusterEntity> clusterEntities = clusterRepository.findByAppIdAndParentClusterId(appId, 0L);
    if (clusterEntities == null) {
      return Collections.emptyList();
    }

    Collections.sort(clusterEntities);

    return clusterEntities;
  }

  @Transactional
  public ClusterEntity saveWithInstanceOfAppNamespaces(ClusterEntity entity) {

    ClusterEntity savedClusterEntity = saveWithoutInstanceOfAppNamespaces(entity);

    namespaceService.instanceOfAppNamespaces(savedClusterEntity.getAppId(), savedClusterEntity.getName(),
                                             savedClusterEntity.getDataChangeCreatedBy());

    return savedClusterEntity;
  }



  @Transactional
  public ClusterEntity saveWithoutInstanceOfAppNamespaces(ClusterEntity entity) {
    if (!isClusterNameUnique(entity.getAppId(), entity.getName())) {
      throw new BadRequestException("clusterEntity not unique");
    }
    entity.setId(0);//protection
    ClusterEntity clusterEntity = clusterRepository.save(entity);

    auditService.audit(ClusterEntity.class.getSimpleName(), clusterEntity.getId(), AuditEntity.OP.INSERT,
                       clusterEntity.getDataChangeCreatedBy());

    return clusterEntity;
  }

  @Transactional
  public void delete(long id, String operator) {
    ClusterEntity clusterEntity = clusterRepository.findById(id).get();
    if (clusterEntity == null) {
      throw new BadRequestException("clusterEntity not exist");
    }

    //delete linked namespaces
    namespaceService.deleteByAppIdAndClusterName(clusterEntity.getAppId(), clusterEntity.getName(), operator);

    clusterEntity.setDeleted(true);
    clusterEntity.setDataChangeLastModifiedBy(operator);
    clusterRepository.save(clusterEntity);

    auditService.audit(ClusterEntity.class.getSimpleName(), id, AuditEntity.OP.DELETE, operator);
  }

  @Transactional
  public ClusterEntity update(ClusterEntity clusterEntity) {
    ClusterEntity managedClusterEntity =
        clusterRepository.findByAppIdAndName(clusterEntity.getAppId(), clusterEntity.getName());
    BeanUtils.copyEntityProperties(clusterEntity, managedClusterEntity);
    managedClusterEntity = clusterRepository.save(managedClusterEntity);

    auditService.audit(ClusterEntity.class.getSimpleName(), managedClusterEntity.getId(), AuditEntity.OP.UPDATE,
                       managedClusterEntity.getDataChangeLastModifiedBy());

    return managedClusterEntity;
  }

  @Transactional
  public void createDefaultCluster(String appId, String createBy) {
    if (!isClusterNameUnique(appId, ConfigConsts.CLUSTER_NAME_DEFAULT)) {
      throw new ServiceException("clusterEntity not unique");
    }
    ClusterEntity clusterEntity = new ClusterEntity();
    clusterEntity.setName(ConfigConsts.CLUSTER_NAME_DEFAULT);
    clusterEntity.setAppId(appId);
    clusterEntity.setDataChangeCreatedBy(createBy);
    clusterEntity.setDataChangeLastModifiedBy(createBy);
    clusterRepository.save(clusterEntity);

    auditService.audit(ClusterEntity.class.getSimpleName(), clusterEntity.getId(), AuditEntity.OP.INSERT, createBy);
  }

  public List<ClusterEntity> findChildClusters(String appId, String parentClusterName) {
    ClusterEntity parentClusterEntity = findOne(appId, parentClusterName);
    if (parentClusterEntity == null) {
      throw new BadRequestException("parent cluster not exist");
    }

    return clusterRepository.findByParentClusterId(parentClusterEntity.getId());
  }

  public List<ClusterEntity> findClusters(String appId) {
    List<ClusterEntity> clusterEntities = clusterRepository.findByAppId(appId);

    if (clusterEntities == null) {
      return Collections.emptyList();
    }

    // to make sure parent cluster is ahead of branch cluster
    Collections.sort(clusterEntities);

    return clusterEntities;
  }


}
