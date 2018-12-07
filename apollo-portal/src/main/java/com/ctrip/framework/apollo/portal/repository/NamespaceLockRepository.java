package com.ctrip.framework.apollo.portal.repository;


import com.ctrip.framework.apollo.portal.entity.NamespaceLock;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface NamespaceLockRepository extends PagingAndSortingRepository<NamespaceLock, Long> {

  NamespaceLock findByNamespaceIdAndEnv(Long namespaceId, String env);

  Long deleteByNamespaceId(Long namespaceId);

}
