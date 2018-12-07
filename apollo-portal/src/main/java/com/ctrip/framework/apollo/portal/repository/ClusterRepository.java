package com.ctrip.framework.apollo.portal.repository;


import com.ctrip.framework.apollo.portal.entity.ClusterEntity;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface ClusterRepository extends PagingAndSortingRepository<ClusterEntity, Long> {

  List<ClusterEntity> findByAppIdAndParentClusterId(String appId, Long parentClusterId);

  List<ClusterEntity> findByAppId(String appId);

  ClusterEntity findByAppIdAndName(String appId, String name);

//  List<ClusterEntity> findByAppIdAndEnv(String appId, String env);

//  ClusterEntity findByAppIdAndName(String appId, String name);


  List<ClusterEntity> findByParentClusterId(Long parentClusterId);

}
