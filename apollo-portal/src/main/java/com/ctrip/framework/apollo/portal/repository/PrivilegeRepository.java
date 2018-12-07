package com.ctrip.framework.apollo.portal.repository;

import com.ctrip.framework.apollo.portal.entity.Privilege;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface PrivilegeRepository extends PagingAndSortingRepository<Privilege, Long> {

  List<Privilege> findByNamespaceId(long namespaceId);

  List<Privilege> findByNamespaceIdAndPrivilType(long namespaceId, String privilType);

  Privilege findByNamespaceIdAndNameAndPrivilType(long namespaceId, String name, String privilType);
}
