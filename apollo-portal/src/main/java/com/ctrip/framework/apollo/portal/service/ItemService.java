package com.ctrip.framework.apollo.portal.service;


import com.ctrip.framework.apollo.bo.ItemChangeSets;
import com.ctrip.framework.apollo.common.exception.BadRequestException;
import com.ctrip.framework.apollo.common.exception.NotFoundException;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.portal.config.BizConfig;
import com.ctrip.framework.apollo.core.enums.ConfigFileFormat;
import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.core.utils.StringUtils;
import com.ctrip.framework.apollo.model.NamespaceTextModel;
import com.ctrip.framework.apollo.portal.component.txtresolver.ConfigTextResolver;
import com.ctrip.framework.apollo.portal.constant.TracerEventType;
import com.ctrip.framework.apollo.portal.entity.AuditEntity;
import com.ctrip.framework.apollo.portal.entity.Commit;
import com.ctrip.framework.apollo.portal.entity.Item;
import com.ctrip.framework.apollo.portal.entity.Namespace;
import com.ctrip.framework.apollo.portal.repository.ItemRepository;
import com.ctrip.framework.apollo.portal.spi.UserInfoHolder;
import com.ctrip.framework.apollo.portal.util.ConfigChangeContentBuilder;
import com.ctrip.framework.apollo.tracer.Tracer;
import com.ctrip.framework.apollo.vo.ItemDiffs;
import com.ctrip.framework.apollo.vo.NamespaceIdentifier;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.*;

@Service
public class ItemService {

    @Autowired
    private UserInfoHolder userInfoHolder;
//    @Autowired
//    private AdminServiceAPI.NamespaceAPI namespaceAPI;
//    @Autowired
//    private AdminServiceAPI.ItemAPI itemAPI;

    @Autowired
    @Qualifier("fileTextResolver")
    private ConfigTextResolver fileTextResolver;

    @Autowired
    @Qualifier("propertyResolver")
    private ConfigTextResolver propertyResolver;
    @Autowired
    private NamespaceService namespaceService;
    @Autowired
    private ItemRepository itemRepository;

    @Autowired
    private AuditService auditService;
    @Autowired(required = false)
    private BizConfig bizConfig;

    @Autowired
    private CommitService commitService;

    private static final Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();


    @Transactional
    public Item delete(long id, String operator) {
        Item item = itemRepository.findById(id).get();
        if (item == null) {
            throw new IllegalArgumentException("item not exist. ID:" + id);
        }

        item.setDeleted(true);
        item.setDataChangeLastModifiedBy(operator);
        Item deletedItem = itemRepository.save(item);

        auditService.audit(Item.class.getSimpleName(), id, AuditEntity.OP.DELETE, operator);
        return deletedItem;
    }


    public List<Item> findItemsModifiedAfterDate(long namespaceId, Date date) {
        return itemRepository.findByNamespaceIdAndDataChangeLastModifiedTimeGreaterThan(namespaceId, date);
    }

    public Item findLastOne(long namespaceId) {
        return itemRepository.findFirst1ByNamespaceIdOrderByLineNumDesc(namespaceId);
    }


    public List<Item> findItemsWithoutOrdered(Long namespaceId) {
        List<Item> items = itemRepository.findByNamespaceId(namespaceId);
        if (items == null) {
            return Collections.emptyList();
        }
        return items;
    }

    public List<Item> findItemsWithoutOrdered(String appId, String clusterName, String namespaceName) {
        Namespace namespace = namespaceService.findOne(appId, clusterName, namespaceName);
        if (namespace != null) {
            return findItemsWithoutOrdered(namespace.getId());
        } else {
            return Collections.emptyList();
        }
    }

    public List<Item> findItemsWithOrdered(Long namespaceId) {
        List<Item> items = itemRepository.findByNamespaceIdOrderByLineNumAsc(namespaceId);
        if (items == null) {
            return Collections.emptyList();
        }
        return items;
    }


    @Transactional
    public int batchDelete(long namespaceId, String operator) {
        return itemRepository.deleteByNamespaceId(namespaceId, operator);

    }


    public Item findOne(long itemId) {
        Item item = itemRepository.findById(itemId).get();
        return item;
    }

    /**
     * parse config text and update config items
     *
     * @return parse result
     */
    public void updateConfigItemByText(NamespaceTextModel model) {
        String appId = model.getAppId();
        Env env = model.getEnv();
        String clusterName = model.getClusterName();
        String namespaceName = model.getNamespaceName();
        long namespaceId = model.getNamespaceId();
        String configText = model.getConfigText();

        ConfigTextResolver resolver =
                model.getFormat() == ConfigFileFormat.Properties ? propertyResolver : fileTextResolver;


        ItemChangeSets changeSets = resolver.resolve(namespaceId, configText,
                itemRepository.findByNamespaceIdAndEnv(namespaceId, env.name()));
        if (changeSets.isEmpty()) {
            return;
        }

        changeSets.setDataChangeLastModifiedBy(userInfoHolder.getUser().getUserId());
        updateItems(appId, env, clusterName, namespaceName, changeSets);

        Commit commit = Commit.builder().appId(appId).changeSets(gson.toJson(changeSets)).clusterName(clusterName)
                .namespaceName(namespaceName).env(env.name()).build();
        commit.setDataChangeCreatedBy(userInfoHolder.getUser().getUserId());
        commit.setDataChangeLastModifiedBy(userInfoHolder.getUser().getUserId());
//        commit.setDataChangeCreatedTime();
//        commit.setDataChangeLastModifiedTime();
        commitService.save(commit);

    }

    public void updateItems(String appId, Env env, String clusterName, String namespaceName, ItemChangeSets changeSets) {
        String operator = changeSets.getDataChangeLastModifiedBy();
        ConfigChangeContentBuilder configChangeContentBuilder = new ConfigChangeContentBuilder();

        if (!CollectionUtils.isEmpty(changeSets.getCreateItems())) {
            for (Item item : changeSets.getCreateItems()) {
                Item entity = BeanUtils.transfrom(Item.class, item);
                entity.setDataChangeCreatedBy(operator);
                entity.setDataChangeLastModifiedBy(operator);
                entity.setEnv(env.name());
                Item createdItem = save(entity);
                configChangeContentBuilder.createItem(createdItem);
            }
            auditService.audit("ItemSet", null, AuditEntity.OP.INSERT, operator);
        }

        if (!CollectionUtils.isEmpty(changeSets.getUpdateItems())) {
            for (Item item : changeSets.getUpdateItems()) {
                Item entity = BeanUtils.transfrom(Item.class, item);

                Item managedItem = findOne(entity.getId());
                if (managedItem == null) {
                    throw new NotFoundException(String.format("item not found.(key=%s)", entity.getKey()));
                }
                Item beforeUpdateItem = BeanUtils.transfrom(Item.class, managedItem);

                //protect. only value,comment,lastModifiedBy,lineNum can be modified
                managedItem.setValue(entity.getValue());
                managedItem.setComment(entity.getComment());
                managedItem.setLineNum(entity.getLineNum());
                managedItem.setDataChangeLastModifiedBy(operator);
                managedItem.setEnv(env.name());

                Item updatedItem = update(managedItem);
                configChangeContentBuilder.updateItem(beforeUpdateItem, updatedItem);

            }
            auditService.audit("ItemSet", null, AuditEntity.OP.UPDATE, operator);
        }
    }


    public Item createItem(String appId, Env env, String clusterName, String namespaceName, Item item) {
        Namespace namespace = namespaceService.findByAppIdAndClusterNameAndNamespaceName(appId, clusterName, namespaceName);
        if (namespace == null) {
            throw new BadRequestException(
                    "namespace:" + namespaceName + " not exist in env:" + env + ", cluster:" + clusterName);
        }

        Item itemEntity = new Item();
        BeanUtils.copyEntityProperties(item, itemEntity);
        itemEntity.setNamespaceId(namespace.getId());
        itemEntity.setEnv(env.name());
        itemEntity.setDataChangeCreatedBy(userInfoHolder.getUser().getUserId());
        itemEntity.setDataChangeCreatedTime(new Date());
        Item Item = itemRepository.save(itemEntity);
        Tracer.logEvent(TracerEventType.MODIFY_NAMESPACE, String.format("%s+%s+%s+%s", appId, env, clusterName, namespaceName));
        return Item;
    }

    public void updateItem(String appId, Env env, String clusterName, String namespaceName, Item item) {

        Item managedItem = itemRepository.findById(item.getId()).orElse(null);
        BeanUtils.copyEntityProperties(item, managedItem);
        managedItem = itemRepository.save(managedItem);
    }

    public void deleteItem(Env env, long itemId, String userId) {
//        itemAPI.deleteItem(env, itemId, userId);
    }

    public List<Item> findItems(String appId, Env env, String clusterName, String namespaceName) {
        Namespace namespace = namespaceService.findOne(appId, clusterName, namespaceName);

        return itemRepository.findByNamespaceIdAndEnv(namespace.getId(), env.name());
    }

    public Item loadItem(Env env, String appId, String clusterName, String namespaceName, String key) {

        Long namespaceId = namespaceService.findOne(appId, clusterName, namespaceName).getId();
        return itemRepository.findByNamespaceIdAndKeyAndEnv(namespaceId, key, env.name());
    }

    public void syncItems(List<NamespaceIdentifier> comparedNamespaces, List<Item> sourceItems) {
        List<ItemDiffs> itemDiffs = compare(comparedNamespaces, sourceItems);
        for (ItemDiffs itemDiff : itemDiffs) {
            NamespaceIdentifier namespaceIdentifier = itemDiff.getNamespace();
            ItemChangeSets changeSets = itemDiff.getDiffs();
            changeSets.setDataChangeLastModifiedBy(userInfoHolder.getUser().getUserId());

            String appId = namespaceIdentifier.getAppId();
            Env env = namespaceIdentifier.getEnv();
            String clusterName = namespaceIdentifier.getClusterName();
            String namespaceName = namespaceIdentifier.getNamespaceName();

//            itemAPI.updateItemsByChangeSet(appId, env, clusterName, namespaceName, changeSets);

            Tracer.logEvent(TracerEventType.SYNC_NAMESPACE, String.format("%s+%s+%s+%s", appId, env, clusterName, namespaceName));
        }
    }

    public List<ItemDiffs> compare(List<NamespaceIdentifier> comparedNamespaces, List<Item> sourceItems) {

        List<ItemDiffs> result = new LinkedList<>();

        for (NamespaceIdentifier namespace : comparedNamespaces) {

            ItemDiffs itemDiffs = new ItemDiffs(namespace);
            try {
                itemDiffs.setDiffs(parseChangeSets(namespace, sourceItems));
            } catch (BadRequestException e) {
                itemDiffs.setDiffs(new ItemChangeSets());
                itemDiffs.setExtInfo("该集群下没有名为 " + namespace.getNamespaceName() + " 的namespace");
            }
            result.add(itemDiffs);
        }

        return result;
    }

    private long getNamespaceId(NamespaceIdentifier namespaceIdentifier) {
        String appId = namespaceIdentifier.getAppId();
        String clusterName = namespaceIdentifier.getClusterName();
        String namespaceName = namespaceIdentifier.getNamespaceName();
        Env env = namespaceIdentifier.getEnv();
        Long namespaceId = namespaceService.findOne(appId, clusterName, namespaceName).getId();
        return namespaceId;
    }

    private ItemChangeSets parseChangeSets(NamespaceIdentifier namespace, List<Item> sourceItems) {
        ItemChangeSets changeSets = new ItemChangeSets();
        Long namespaceId = namespaceService.findOne(namespace.getAppId(), namespace.getClusterName(), namespace.getClusterName()).getId();
        List<Item> targetItems = itemRepository.findByNamespaceIdAndEnv(namespaceId, namespace.getEnv().name());

//        long namespaceId = getNamespaceId(namespace);

        if (CollectionUtils.isEmpty(targetItems)) {//all source items is added
            int lineNum = 1;
            for (Item sourceItem : sourceItems) {
                changeSets.addCreateItem(buildItem(namespaceId, lineNum++, sourceItem));
            }
        } else {
            Map<String, Item> targetItemMap = BeanUtils.mapByKey("key", targetItems);
            String key, sourceValue, sourceComment;
            Item targetItem = null;
            int maxLineNum = targetItems.size();//append to last
            for (Item sourceItem : sourceItems) {
                key = sourceItem.getKey();
                sourceValue = sourceItem.getValue();
                sourceComment = sourceItem.getComment();
                targetItem = targetItemMap.get(key);

                if (targetItem == null) {//added items

                    changeSets.addCreateItem(buildItem(namespaceId, ++maxLineNum, sourceItem));

                } else if (isModified(sourceValue, targetItem.getValue(), sourceComment,
                        targetItem.getComment())) {//modified items
                    targetItem.setValue(sourceValue);
                    targetItem.setComment(sourceComment);
                    changeSets.addUpdateItem(targetItem);
                }
            }
        }

        return changeSets;
    }

    private Item buildItem(long namespaceId, int lineNum, Item sourceItem) {
        Item createdItem = new Item();
        BeanUtils.copyEntityProperties(sourceItem, createdItem);
        createdItem.setLineNum(lineNum);
        createdItem.setNamespaceId(namespaceId);
        return createdItem;
    }

    private boolean isModified(String sourceValue, String targetValue, String sourceComment, String targetComment) {

        if (!sourceValue.equals(targetValue)) {
            return true;
        }

        if (sourceComment == null) {
            return !StringUtils.isEmpty(targetComment);
        } else if (targetComment != null) {
            return !sourceComment.equals(targetComment);
        } else {
            return false;
        }
    }


    @Transactional
    public Item save(Item entity) {
//        checkItemKeyLength(entity.getKey());
//        checkItemValueLength(entity.getNamespaceId(), entity.getValue());

        entity.setId(0);//protection

        if (entity.getLineNum() == 0) {
            Item lastItem = findLastOne(entity.getNamespaceId());
            int lineNum = lastItem == null ? 1 : lastItem.getLineNum() + 1;
            entity.setLineNum(lineNum);
        }

        Item item = itemRepository.save(entity);

        auditService.audit(Item.class.getSimpleName(), item.getId(), AuditEntity.OP.INSERT,
                item.getDataChangeCreatedBy());

        return item;
    }

    @Transactional
    public Item update(Item item) {
//        checkItemValueLength(item.getNamespaceId(), item.getValue());
        Item managedItem = itemRepository.findById(item.getId()).get();
        BeanUtils.copyEntityProperties(item, managedItem);
        managedItem = itemRepository.save(managedItem);

        auditService.audit(Item.class.getSimpleName(), managedItem.getId(), AuditEntity.OP.UPDATE,
                managedItem.getDataChangeLastModifiedBy());

        return managedItem;
    }

    private boolean checkItemValueLength(long namespaceId, String value) {
        int limit = getItemValueLengthLimit(namespaceId);
        if (!StringUtils.isEmpty(value) && value.length() > limit) {
            throw new BadRequestException("value too long. length limit:" + limit);
        }
        return true;
    }

    private boolean checkItemKeyLength(String key) {
        if (!StringUtils.isEmpty(key) && key.length() > bizConfig.itemKeyLengthLimit()) {
            throw new BadRequestException("key too long. length limit:" + bizConfig.itemKeyLengthLimit());
        }
        return true;
    }

    private int getItemValueLengthLimit(long namespaceId) {
        Map<Long, Integer> namespaceValueLengthOverride = bizConfig.namespaceValueLengthLimitOverride();
        if (namespaceValueLengthOverride != null && namespaceValueLengthOverride.containsKey(namespaceId)) {
            return namespaceValueLengthOverride.get(namespaceId);
        }
        return bizConfig.itemValueLengthLimit();
    }
}
