package com.ctrip.framework.apollo.vo;

import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.portal.entity.ClusterEntity;

import java.util.List;

public class EnvClusterInfo {
  private Env env;
  private List<ClusterEntity> clusters;

  public EnvClusterInfo(Env env) {
    this.env = env;
  }

  public Env getEnv() {
    return env;
  }

  public void setEnv(Env env) {
    this.env = env;
  }

  public List<ClusterEntity> getClusters() {
    return clusters;
  }

  public void setClusters(List<ClusterEntity> clusters) {
    this.clusters = clusters;
  }

}
