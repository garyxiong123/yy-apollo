package com.ctrip.framework.apollo.portal.repository;

import com.ctrip.framework.apollo.portal.entity.Instance;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface InstanceRepository extends PagingAndSortingRepository<Instance, Long> {
  Instance findByAppIdAndClusterNameAndDataCenterAndIp(String appId, String clusterName, String dataCenter, String ip);


  int countByAppIdAndEnvAndClusterName(String appId, String env, String clusterName);
}
