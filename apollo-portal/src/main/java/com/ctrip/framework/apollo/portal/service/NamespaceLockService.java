package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.portal.component.config.PortalConfig;
import com.ctrip.framework.apollo.portal.entity.NamespaceLock;
import com.ctrip.framework.apollo.portal.repository.NamespaceLockRepository;
import com.ctrip.framework.apollo.vo.LockInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NamespaceLockService {

  @Autowired
  private PortalConfig portalConfig;

  @Autowired
  private NamespaceLockRepository namespaceLockRepository;

  @Autowired
  private NamespaceService namespaceService;

  public NamespaceLock getNamespaceLock(String appId, Env env, String clusterName, String namespaceName) {
    Long namespaceId = namespaceService.findOne(appId, clusterName, namespaceName).getId();

    return namespaceLockRepository.findByNamespaceIdAndEnv(namespaceId, env.name());
  }

  public LockInfo getNamespaceLockInfo(String appId, Env env, String clusterName, String namespaceName) {
    LockInfo lockInfo = new LockInfo();
    Long namespaceId = namespaceService.findOne(appId, clusterName, namespaceName).getId();
    NamespaceLock NamespaceLock =  namespaceLockRepository.findByNamespaceIdAndEnv(namespaceId, env.name());
    String lockOwner = NamespaceLock == null ? "" : NamespaceLock.getDataChangeCreatedBy();
    lockInfo.setLockOwner(lockOwner);

    lockInfo.setEmergencyPublishAllowed(portalConfig.isEmergencyPublishAllowed(env));

    return lockInfo;
  }


  public NamespaceLock findLock(Long namespaceId, String env){
    return namespaceLockRepository.findByNamespaceIdAndEnv(namespaceId, env);
  }


  @Transactional
  public NamespaceLock tryLock(NamespaceLock lock){
    return namespaceLockRepository.save(lock);
  }

  @Transactional
  public void unlock(Long namespaceId){
    namespaceLockRepository.deleteByNamespaceId(namespaceId);
  }

}
