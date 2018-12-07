package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import com.ctrip.framework.apollo.portal.repository.AuditRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AuditService {

  @Autowired
  private AuditRepository auditRepository;

  List<AuditEntity> findByOwner(String owner) {
    return auditRepository.findByOwner(owner);
  }

  List<AuditEntity> find(String owner, String entity, String op) {
    return auditRepository.findAudits(owner, entity, op);
  }

  @Transactional
  void audit(String entityName, Long entityId, AuditEntity.OP op, String owner) {
    AuditEntity auditEntity = new AuditEntity();
    auditEntity.setEntityName(entityName);
    auditEntity.setEntityId(entityId);
    auditEntity.setOpName(op.name());
    auditEntity.setDataChangeCreatedBy(owner);
    auditRepository.save(auditEntity);
  }
  
  @Transactional
  void audit(AuditEntity auditEntity){
    auditRepository.save(auditEntity);
  }
}
