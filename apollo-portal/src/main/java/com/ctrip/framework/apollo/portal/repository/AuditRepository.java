package com.ctrip.framework.apollo.portal.repository;

import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AuditRepository extends PagingAndSortingRepository<AuditEntity, Long> {

  @Query("SELECT a from AuditEntity a WHERE a.dataChangeCreatedBy = :owner")
  List<AuditEntity> findByOwner(@Param("owner") String owner);

  @Query("SELECT a from AuditEntity a WHERE a.dataChangeCreatedBy = :owner AND a.entityName =:entity AND a.opName = :op")
  List<AuditEntity> findAudits(@Param("owner") String owner, @Param("entity") String entity,
                               @Param("op") String op);
}
