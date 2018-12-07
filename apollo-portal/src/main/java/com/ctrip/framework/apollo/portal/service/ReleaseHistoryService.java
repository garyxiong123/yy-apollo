package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import com.ctrip.framework.apollo.portal.entity.Release;
import com.ctrip.framework.apollo.portal.entity.ReleaseHistory;
import com.ctrip.framework.apollo.portal.repository.ReleaseHistoryRepository;
import com.google.gson.Gson;

import com.ctrip.framework.apollo.common.constants.GsonType;
import com.ctrip.framework.apollo.common.entity.EntityPair;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.bo.ReleaseHistoryBO;
import com.ctrip.framework.apollo.portal.util.RelativeDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;


@Service
public class ReleaseHistoryService {

  private Gson gson = new Gson();

  @Autowired
  private ReleaseHistoryRepository releaseHistoryRepository;
//  @Autowired
//  private InstanceAPI.ReleaseHistoryAPI releaseHistoryAPI;
  @Autowired
  private ReleaseService releaseService;
//  @Autowired
//  private ReleaseHistoryRepository releaseHistoryRepository;
  @Autowired
  private AuditService auditService;



  public ReleaseHistoryBO findLatestByReleaseIdAndOperation(Env env, long releaseId, int operation){
//releaseHistoryRepository.findByAppIdAndClusterNameAndNamespaceNameOrderByIdDesc(appId, clusterName,
//                                                                                           namespaceName, pageable)
    Pageable page = PageRequest.of(0, 10);
    Page<ReleaseHistory> releaseHistoryPage = releaseHistoryRepository.findByReleaseIdAndOperationOrderByIdDesc(releaseId, operation, page);
    if (releaseHistoryPage != null && releaseHistoryPage.hasContent()){

      ReleaseHistory releaseHistory = releaseHistoryPage.getContent().get(0);
      Release release = releaseService.findReleaseById(env, releaseHistory.getReleaseId());
      return transformReleaseHistory2BO(releaseHistory, release);
    }

    return null;
  }

  public ReleaseHistoryBO findLatestByPreviousReleaseIdAndOperation(Env env, long previousReleaseId, int operation){
    Pageable page = PageRequest.of(0,10);
    Page<ReleaseHistory> pageDTO = releaseHistoryRepository.findByPreviousReleaseIdAndOperationOrderByIdDesc(previousReleaseId, operation, page);
    if (pageDTO != null && pageDTO.hasContent()){
      ReleaseHistory releaseHistory = pageDTO.getContent().get(0);
      Release release = releaseService.findReleaseById(env, releaseHistory.getReleaseId());
      return transformReleaseHistory2BO(releaseHistory, release);
    }

    return null;
  }

  public List<ReleaseHistoryBO> findNamespaceReleaseHistory(String appId, Env env, String clusterName,
                                                            String namespaceName, int page, int size) {
    Pageable page1 = PageRequest.of(0,10);
    Page<ReleaseHistory> result = releaseHistoryRepository.findByAppIdAndClusterNameAndNamespaceNameOrderByIdDesc(appId, env, clusterName,
            namespaceName, page1);
//            releaseHistoryAPI.findReleaseHistoriesByNamespace(appId, env, clusterName,
//                                                                                          namespaceName, page, size);
    if (result == null || !result.hasContent()) {
      return Collections.emptyList();
    }

    List<ReleaseHistory> content = result.getContent();
    Set<Long> releaseIds = new HashSet<>();
    for (ReleaseHistory ReleaseHistory : content) {
      long releaseId = ReleaseHistory.getReleaseId();
      if (releaseId != 0) {
        releaseIds.add(releaseId);
      }
    }

    List<Release> releases = releaseService.findReleaseByIds(env, releaseIds);

    return transformReleaseHistoryList2BOList(content, releases);
  }

  private List<ReleaseHistoryBO> transformReleaseHistoryList2BOList(List<ReleaseHistory> source,
                                                                    List<Release> releases) {

    Map<Long, Release> releasesMap = BeanUtils.mapByKey("id", releases);

    List<ReleaseHistoryBO> bos = new ArrayList<>(source.size());
    for (ReleaseHistory dto : source) {
      Release release = releasesMap.get(dto.getReleaseId());
      bos.add(transformReleaseHistory2BO(dto, release));
    }

    return bos;
  }

  private ReleaseHistoryBO transformReleaseHistory2BO(ReleaseHistory releaseHistory, Release release){
    ReleaseHistoryBO bo = new ReleaseHistoryBO();
    bo.setId(releaseHistory.getId());
    bo.setAppId(releaseHistory.getAppId());
    bo.setClusterName(releaseHistory.getClusterName());
    bo.setNamespaceName(releaseHistory.getNamespaceName());
    bo.setBranchName(releaseHistory.getBranchName());
    bo.setReleaseId(releaseHistory.getReleaseId());
    bo.setPreviousReleaseId(releaseHistory.getPreviousReleaseId());
    bo.setOperator(releaseHistory.getDataChangeCreatedBy());
    bo.setOperation(releaseHistory.getOperation());
    Date releaseTime = releaseHistory.getDataChangeLastModifiedTime();
    bo.setReleaseTime(releaseTime);
    bo.setReleaseTimeFormatted(RelativeDateFormat.format(releaseTime));
    bo.setOperationContext(gson.fromJson(releaseHistory.getOperationContext(), GsonType.CONFIG));

    //set release info
    setReleaseInfoToReleaseHistoryBO(bo, release);

    return bo;
  }
  private void setReleaseInfoToReleaseHistoryBO(ReleaseHistoryBO bo, Release release) {
    if (release != null) {
      bo.setReleaseTitle(release.getName());
      bo.setReleaseComment(release.getComment());

      Map<String, String> configuration = gson.fromJson(release.getConfigurations(), GsonType.CONFIG);
      List<EntityPair<String>> items = new ArrayList<>(configuration.size());
      for (Map.Entry<String, String> entry : configuration.entrySet()) {
        EntityPair<String> entityPair = new EntityPair<>(entry.getKey(), entry.getValue());
        items.add(entityPair);
      }
      bo.setConfiguration(items);

    } else {
      bo.setReleaseTitle("no release information");
      bo.setConfiguration(null);
    }
  }

  public Page<ReleaseHistory> findReleaseHistoriesByNamespace(String appId, String clusterName,
                                                              String namespaceName, Pageable
                                                                      pageable) {
    return releaseHistoryRepository.findByAppIdAndClusterNameAndNamespaceNameOrderByIdDesc(appId, clusterName,
            namespaceName, pageable);
  }

  public Page<ReleaseHistory> findByReleaseIdAndOperation(long releaseId, int operation, Pageable page) {
    return releaseHistoryRepository.findByReleaseIdAndOperationOrderByIdDesc(releaseId, operation, page);
  }

  public Page<ReleaseHistory> findByPreviousReleaseIdAndOperation(long previousReleaseId, int operation, Pageable page) {
    return releaseHistoryRepository.findByPreviousReleaseIdAndOperationOrderByIdDesc(previousReleaseId, operation, page);
  }

  @Transactional
  public ReleaseHistory createReleaseHistory(String appId, String clusterName, String
          namespaceName, String branchName, long releaseId, long previousReleaseId, int operation,
                                             Map<String, Object> operationContext, String operator) {
    ReleaseHistory releaseHistory = new ReleaseHistory();
    releaseHistory.setAppId(appId);
    releaseHistory.setClusterName(clusterName);
    releaseHistory.setNamespaceName(namespaceName);
    releaseHistory.setBranchName(branchName);
    releaseHistory.setReleaseId(releaseId);
    releaseHistory.setPreviousReleaseId(previousReleaseId);
    releaseHistory.setOperation(operation);
    if (operationContext == null) {
      releaseHistory.setOperationContext("{}"); //default empty object
    } else {
      releaseHistory.setOperationContext(gson.toJson(operationContext));
    }
    releaseHistory.setDataChangeCreatedTime(new Date());
    releaseHistory.setDataChangeCreatedBy(operator);
    releaseHistory.setDataChangeLastModifiedBy(operator);

    releaseHistoryRepository.save(releaseHistory);

    auditService.audit(ReleaseHistory.class.getSimpleName(), releaseHistory.getId(),
            AuditEntity.OP.INSERT, releaseHistory.getDataChangeCreatedBy());

    return releaseHistory;
  }

  @Transactional
  public int batchDelete(String appId, String clusterName, String namespaceName, String operator) {
    return releaseHistoryRepository.batchDelete(appId, clusterName, namespaceName, operator);
  }
}
