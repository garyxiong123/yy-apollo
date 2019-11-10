package com.ctrip.framework.apollo.model.bo;


import com.ctrip.framework.apollo.model.entity.Namespace;

import java.util.List;

public class NamespaceBO {
  private Namespace baseInfo;
  private int itemModifiedCnt;
  private List<ItemBO> items;
  private String format;
  private boolean isPublic;
  private String parentAppId;
  private String comment;
  // is the configs hidden to current user?
  private boolean isConfigHidden;

  public Namespace getBaseInfo() {
    return baseInfo;
  }

  public void setBaseInfo(Namespace baseInfo) {
    this.baseInfo = baseInfo;
  }

  public int getItemModifiedCnt() {
    return itemModifiedCnt;
  }

  public void setItemModifiedCnt(int itemModifiedCnt) {
    this.itemModifiedCnt = itemModifiedCnt;
  }

  public List<ItemBO> getItems() {
    return items;
  }

  public void setItems(List<ItemBO> items) {
    this.items = items;
  }

  public String getFormat() {
    return format;
  }

  public void setFormat(String format) {
    this.format = format;
  }

  public boolean isPublic() {
    return isPublic;
  }

  public void setPublic(boolean aPublic) {
    isPublic = aPublic;
  }

  public String getParentAppId() {
    return parentAppId;
  }

  public void setParentAppId(String parentAppId) {
    this.parentAppId = parentAppId;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public boolean isConfigHidden() {
    return isConfigHidden;
  }

  public void setConfigHidden(boolean hidden) {
    isConfigHidden = hidden;
  }

  public void hideItems() {
    setConfigHidden(true);
    items.clear();
    setItemModifiedCnt(0);
  }
}