package com.ctrip.framework.apollo.bo;


import com.ctrip.framework.apollo.portal.entity.Item;

public  class ItemBO {
    private Item item;
    private boolean isModified;
    private boolean isDeleted;
    private String oldValue;
    private String newValue;

    public Item getItem() {
      return item;
    }

    public void setItem(Item item) {
      this.item = item;
    }

    public boolean isDeleted() {
      return isDeleted;
    }

    public void setDeleted(boolean deleted) {
      isDeleted = deleted;
    }

    public boolean isModified() {
      return isModified;
    }

    public void setModified(boolean isModified) {
      this.isModified = isModified;
    }

    public String getOldValue() {
      return oldValue;
    }

    public void setOldValue(String oldValue) {
      this.oldValue = oldValue;
    }

    public String getNewValue() {
      return newValue;
    }

    public void setNewValue(String newValue) {
      this.newValue = newValue;
    }


  }
