package com.ctrip.framework.apollo.bo;

import com.ctrip.framework.apollo.portal.entity.Item;

import java.util.LinkedList;
import java.util.List;

/**
 * storage cud result
 */
public class ItemChangeSets extends BaseDTO{

  private List<Item> createItems = new LinkedList<>();
  private List<Item> updateItems = new LinkedList<>();
  private List<Item> deleteItems = new LinkedList<>();

  public void addCreateItem(Item item) {
    createItems.add(item);
  }

  public void addUpdateItem(Item item) {
    updateItems.add(item);
  }

  public void addDeleteItem(Item item) {
    deleteItems.add(item);
  }

  public boolean isEmpty(){
    return createItems.isEmpty() && updateItems.isEmpty() && deleteItems.isEmpty();
  }

  public List<Item> getCreateItems() {
    return createItems;
  }

  public List<Item> getUpdateItems() {
    return updateItems;
  }

  public List<Item> getDeleteItems() {
    return deleteItems;
  }

  public void setCreateItems(List<Item> createItems) {
    this.createItems = createItems;
  }

  public void setUpdateItems(List<Item> updateItems) {
    this.updateItems = updateItems;
  }

  public void setDeleteItems(List<Item> deleteItems) {
    this.deleteItems = deleteItems;
  }

}
