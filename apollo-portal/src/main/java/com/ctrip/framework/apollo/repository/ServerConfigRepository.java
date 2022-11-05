package com.ctrip.framework.apollo.repository;


import com.ctrip.framework.apollo.model.entity.ServerConfig;

import org.springframework.data.repository.PagingAndSortingRepository;

public interface ServerConfigRepository extends PagingAndSortingRepository<ServerConfig, Long> {
  ServerConfig findByKey(String key);
}
