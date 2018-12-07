package com.ctrip.framework.apollo.portal.component;

import com.ctrip.framework.apollo.bo.ItemChangeSets;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.core.utils.StringUtils;

import com.ctrip.framework.apollo.portal.entity.Item;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Component
public class ItemsComparator {


  public ItemChangeSets compareIgnoreBlankAndCommentItem(long baseNamespaceId, List<Item> baseItems, List<Item> targetItems){
    List<Item> filteredSourceItems = filterBlankAndCommentItem(baseItems);
    List<Item> filteredTargetItems = filterBlankAndCommentItem(targetItems);

    Map<String, Item> sourceItemMap = BeanUtils.mapByKey("key", filteredSourceItems);
    Map<String, Item> targetItemMap = BeanUtils.mapByKey("key", filteredTargetItems);

    ItemChangeSets changeSets = new ItemChangeSets();

    for (Item item: targetItems){
      String key = item.getKey();

      Item sourceItem = sourceItemMap.get(key);
      if (sourceItem == null){//add
        Item copiedItem = copyItem(item);
        copiedItem.setNamespaceId(baseNamespaceId);
        changeSets.addCreateItem(copiedItem);
      }else if (!Objects.equals(sourceItem.getValue(), item.getValue())){//update
        //only value & comment can be update
        sourceItem.setValue(item.getValue());
        sourceItem.setComment(item.getComment());
        changeSets.addUpdateItem(sourceItem);
      }
    }

    for (Item item: baseItems){
      String key = item.getKey();

      Item targetItem = targetItemMap.get(key);
      if(targetItem == null){//delete
        changeSets.addDeleteItem(item);
      }
    }

    return changeSets;
  }

  private List<Item> filterBlankAndCommentItem(List<Item> items){

    List<Item> result = new LinkedList<>();

    if (CollectionUtils.isEmpty(items)){
      return result;
    }

    for (Item item: items){
      if (!StringUtils.isEmpty(item.getKey())){
        result.add(item);
      }
    }

    return result;
  }

  private Item copyItem(Item sourceItem){
    Item copiedItem = new Item();
    copiedItem.setKey(sourceItem.getKey());
    copiedItem.setValue(sourceItem.getValue());
    copiedItem.setComment(sourceItem.getComment());
    return copiedItem;

  }

}
