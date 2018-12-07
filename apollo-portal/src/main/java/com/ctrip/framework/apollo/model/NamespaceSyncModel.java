package com.ctrip.framework.apollo.model;

import com.ctrip.framework.apollo.portal.entity.Item;
import com.ctrip.framework.apollo.vo.NamespaceIdentifier;

import org.springframework.util.CollectionUtils;

import java.util.List;

public class NamespaceSyncModel implements Verifiable {

  private List<NamespaceIdentifier> syncToNamespaces;
  private List<Item> syncItems;

  @Override
  public boolean isInvalid() {
    if (CollectionUtils.isEmpty(syncToNamespaces) || CollectionUtils.isEmpty(syncItems)) {
      return true;
    }
    for (NamespaceIdentifier namespaceIdentifier : syncToNamespaces) {
      if (namespaceIdentifier.isInvalid()) {
        return true;
      }
    }
    return false;
  }

  public List<NamespaceIdentifier> getSyncToNamespaces() {
    return syncToNamespaces;
  }

  public void setSyncToNamespaces(List<NamespaceIdentifier> syncToNamespaces) {
    this.syncToNamespaces = syncToNamespaces;
  }

  public List<Item> getSyncItems() {
    return syncItems;
  }

  public void setSyncItems(List<Item> syncItems) {
    this.syncItems = syncItems;
  }
}
