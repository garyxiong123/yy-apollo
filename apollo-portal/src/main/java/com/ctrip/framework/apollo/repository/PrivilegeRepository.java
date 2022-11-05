package com.ctrip.framework.apollo.repository;

import com.ctrip.framework.apollo.model.entity.Privilege;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface PrivilegeRepository extends PagingAndSortingRepository<Privilege, Long> {

  List<Privilege> findByNamespaceId(long namespaceId);

  List<Privilege> findByNamespaceIdAndPrivilType(long namespaceId, String privilType);

  Privilege findByNamespaceIdAndNameAndPrivilType(long namespaceId, String name, String privilType);
}
