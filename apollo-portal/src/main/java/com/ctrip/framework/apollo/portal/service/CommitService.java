package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.core.enums.Env;

import com.ctrip.framework.apollo.portal.entity.Commit;
import com.ctrip.framework.apollo.portal.repository.CommitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CommitService {


  @Autowired
  private CommitRepository commitRepository;

  public List<Commit> find(String appId, Env env, String clusterName, String namespaceName, int page, int size) {
    Pageable pageable = PageRequest.of(page, size);
    return commitRepository.findByAppIdAndClusterNameAndNamespaceNameAndEnvOrderByIdDesc(appId, clusterName, namespaceName, env.name(), pageable);
  }


    @Transactional
  public int batchDelete(String appId, String clusterName, String namespaceName, String operator){
    return commitRepository.batchDelete(appId, clusterName, namespaceName, operator);
  }




  @Transactional
  public Commit save(Commit commit){
    commit.setId(0);//protection
    return commitRepository.save(commit);
  }


}
