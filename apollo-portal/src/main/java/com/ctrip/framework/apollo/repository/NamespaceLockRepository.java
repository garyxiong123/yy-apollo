package com.ctrip.framework.apollo.repository;


import com.ctrip.framework.apollo.model.entity.NamespaceLock;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface NamespaceLockRepository extends PagingAndSortingRepository<NamespaceLock, Long> {

  NamespaceLock findByNamespaceIdAndEnv(Long namespaceId, String env);

  Long deleteByNamespaceId(Long namespaceId);

}
