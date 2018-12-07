package com.ctrip.framework.apollo.bo;


import com.ctrip.framework.apollo.portal.entity.Release;

import java.util.Set;

public class ReleaseBO {

  private Release baseInfo;

  private Set<KVEntity> items;

  public Release getBaseInfo() {
    return baseInfo;
  }

  public void setBaseInfo(Release baseInfo) {
    this.baseInfo = baseInfo;
  }

  public Set<KVEntity> getItems() {
    return items;
  }

  public void setItems(Set<KVEntity> items) {
    this.items = items;
  }

}
