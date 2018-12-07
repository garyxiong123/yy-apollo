package com.ctrip.framework.apollo.portal.component.txtresolver;

import com.ctrip.framework.apollo.bo.ItemChangeSets;
import com.ctrip.framework.apollo.portal.entity.Item;

import java.util.List;

/**
 * users can modify config in text mode.so need resolve text.
 */
public interface ConfigTextResolver {

  ItemChangeSets resolve(long namespaceId, String configText, List<Item> baseItems);

}
