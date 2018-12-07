package com.ctrip.framework.apollo.model;


import com.ctrip.framework.apollo.portal.entity.Namespace;

public class NamespaceCreationModel {

  private String env;

  private Namespace namespace;

  public String getEnv() {
    return env;
  }

  public void setEnv(String env) {
    this.env = env;
  }

  public Namespace getNamespace() {
    return namespace;
  }

  public void setNamespace(Namespace namespace) {
    this.namespace = namespace;
  }
}
