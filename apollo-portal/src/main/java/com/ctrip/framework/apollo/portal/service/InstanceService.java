package com.ctrip.framework.apollo.portal.service;

import com.ctrip.framework.apollo.common.dto.InstanceConfigDTO;
import com.ctrip.framework.apollo.common.dto.InstanceDTO;
import com.ctrip.framework.apollo.common.dto.PageDTO;
import com.ctrip.framework.apollo.common.dto.ReleaseDTO;
import com.ctrip.framework.apollo.common.exception.NotFoundException;
import com.ctrip.framework.apollo.common.utils.BeanUtils;
import com.ctrip.framework.apollo.core.enums.Env;

import com.ctrip.framework.apollo.portal.entity.Instance;
import com.ctrip.framework.apollo.portal.entity.InstanceConfig;
import com.ctrip.framework.apollo.portal.entity.Release;
import com.ctrip.framework.apollo.portal.repository.InstanceConfigRepository;
import com.ctrip.framework.apollo.portal.repository.InstanceRepository;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.Strings;
import com.google.common.collect.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.math.BigInteger;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class InstanceService {

    private static final Splitter RELEASES_SPLITTER = Splitter.on(",").omitEmptyStrings()
            .trimResults();
    @Autowired
    private InstanceConfigRepository instanceConfigRepository;

    @Autowired
    private InstanceRepository instanceRepository;
    @Autowired
    private ReleaseService releaseService;


    public Instance findInstance(String appId, String clusterName, String dataCenter, String ip) {
        return instanceRepository.findByAppIdAndClusterNameAndDataCenterAndIp(appId, clusterName,
                dataCenter, ip);
    }

/*    public List<Instance> findInstancesByIds(Set<Long> instanceIds) {
        Iterable<Instance> instances = instanceRepository.findAll(instanceIds);
        if (instances == null) {
            return Collections.emptyList();
        }
        return Lists.newArrayList(instances);
    }*/


    @Transactional
    public Instance createInstance(Instance instance) {
        instance.setId(0); //protection

        return instanceRepository.save(instance);
    }

    public InstanceConfig findInstanceConfig(long instanceId, String configAppId, String
            configNamespaceName) {
        return instanceConfigRepository
                .findByInstanceIdAndConfigAppIdAndConfigNamespaceName(
                        instanceId, configAppId, configNamespaceName);
    }

    public Page<InstanceConfig> findActiveInstanceConfigsByReleaseKey(String releaseKey, Pageable
            pageable) {
        Page<InstanceConfig> instanceConfigs = instanceConfigRepository
                .findByReleaseKeyAndDataChangeLastModifiedTimeAfter(releaseKey,
                        getValidInstanceConfigDate(), pageable);
        return instanceConfigs;
    }

    private Date getValidInstanceConfigDate() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);
        cal.add(Calendar.HOUR, -1);
        return cal.getTime();
    }

    public PageDTO<Instance> getByRelease(Env env, long releaseId, int page, int size) {
        Release release = releaseService.findReleaseById(env, releaseId);
        return null;
    }

    public Page<Instance> getByNamespace(Env env, String appId, String clusterName, String namespaceName,
                                            String instanceAppId, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Instance> instances;
        if (Strings.isNullOrEmpty(instanceAppId)) {
            instances = findInstancesByNamespace(appId, clusterName,
                    namespaceName, pageable);
        } else {
            instances = findInstancesByNamespaceAndInstanceAppId(instanceAppId, appId,
                    clusterName, namespaceName, pageable);
        }

        List<InstanceDTO> instanceDTOs = BeanUtils.batchTransform(InstanceDTO.class, instances.getContent());
        return instances;
    }

    public Page<Instance> findInstancesByNamespaceAndInstanceAppId(String instanceAppId, String
            appId, String clusterName, String
                                                                           namespaceName, Pageable
                                                                           pageable) {
        Page<Object[]> instanceIdResult = instanceConfigRepository
                .findInstanceIdsByNamespaceAndInstanceAppId(instanceAppId, appId, clusterName,
                        namespaceName, getValidInstanceConfigDate(), pageable);

        List<Instance> instances = Collections.emptyList();
        if (instanceIdResult.hasContent()) {
            Set<Long> instanceIds = instanceIdResult.getContent().stream().map((Object o) -> {
                if (o == null) {
                    return null;
                }

                if (o instanceof Integer) {
                    return ((Integer) o).longValue();
                }

                if (o instanceof Long) {
                    return (Long) o;
                }

                //for h2 test
                if (o instanceof BigInteger) {
                    return ((BigInteger) o).longValue();
                }

                return null;
            }).filter((Long value) -> value != null).collect(Collectors.toSet());
            instances = findInstancesByIds(instanceIds);
        }

        return new PageImpl<>(instances, pageable, instanceIdResult.getTotalElements());
    }

    public Page<Instance> findInstancesByNamespace(String appId, String clusterName, String
            namespaceName, Pageable pageable) {
        Page<InstanceConfig> instanceConfigs = instanceConfigRepository.
                findByConfigAppIdAndConfigClusterNameAndConfigNamespaceNameAndDataChangeLastModifiedTimeAfter(appId, clusterName,
                        namespaceName, getValidInstanceConfigDate(), pageable);

        List<Instance> instances = Collections.emptyList();
        if (instanceConfigs.hasContent()) {
            Set<Long> instanceIds = instanceConfigs.getContent().stream().map
                    (InstanceConfig::getInstanceId).collect(Collectors.toSet());
            instances = findInstancesByIds(instanceIds);
        }

        return new PageImpl<>(instances, pageable, instanceConfigs.getTotalElements());
    }

    public int getInstanceCountByNamepsace(String appId, Env env, String clusterName, String namespaceName) {

        return instanceRepository.countByAppIdAndEnvAndClusterName(appId, env.name(), clusterName);
    }

    public List<Instance> getByReleasesNotIn(Env env, String appId, String clusterName, String namespaceName, Set<Long> releaseIds) {
//    return instanceAPI.getByReleasesNotIn(appId, env, clusterName, namespaceName, releaseIds);


        List<Release> releases = releaseService.findByReleaseIds(releaseIds);

        if (CollectionUtils.isEmpty(releases)) {
            throw new NotFoundException(String.format("releases not found for %s", releaseIds));
        }

        Set<String> releaseKeys = releases.stream().map(Release::getReleaseKey).collect(Collectors
                .toSet());

        List<InstanceConfig> instanceConfigs = findInstanceConfigsByNamespaceWithReleaseKeysNotIn(appId, clusterName, namespaceName,
                releaseKeys);

        Multimap<Long, InstanceConfig> instanceConfigMap = HashMultimap.create();
        Set<String> otherReleaseKeys = Sets.newHashSet();

        for (InstanceConfig instanceConfig : instanceConfigs) {
            instanceConfigMap.put(instanceConfig.getInstanceId(), instanceConfig);
            otherReleaseKeys.add(instanceConfig.getReleaseKey());
        }

        List<Instance> instances = findInstancesByIds(instanceConfigMap.keySet());

        if (CollectionUtils.isEmpty(instances)) {
            return Collections.emptyList();
        }

//        List<Instance> instances = BeanUtils.batchTransform(Instance.class, instances);

        List<Release> otherReleases = releaseService.findByReleaseKeys(otherReleaseKeys);
        Map<String, ReleaseDTO> releaseMap = Maps.newHashMap();

        for (Release release : otherReleases) {
            //unset configurations to save space
            release.setConfigurations(null);
            ReleaseDTO releaseDTO = BeanUtils.transfrom(ReleaseDTO.class, release);
            releaseMap.put(release.getReleaseKey(), releaseDTO);
        }

        for (Instance instance : instances) {
            Collection<InstanceConfig> configs = instanceConfigMap.get(instance.getId());
            List<InstanceConfigDTO> configDTOs = configs.stream().map(instanceConfig -> {
                InstanceConfigDTO instanceConfigDTO = new InstanceConfigDTO();
                instanceConfigDTO.setRelease(releaseMap.get(instanceConfig.getReleaseKey()));
                instanceConfigDTO.setReleaseDeliveryTime(instanceConfig.getReleaseDeliveryTime());
                instanceConfigDTO.setDataChangeLastModifiedTime(instanceConfig
                        .getDataChangeLastModifiedTime());
                return instanceConfigDTO;
            }).collect(Collectors.toList());
//            instanceDTO.setConfigs(configDTOs);
        }

        return instances;
    }


    public List<Instance> findInstancesByIds(Set<Long> instanceIds) {
        Iterable<Instance> instances = instanceRepository.findAllById(instanceIds);
        if (instances == null) {
            return Collections.emptyList();
        }
        return Lists.newArrayList(instances);
    }

    public List<InstanceConfig> findInstanceConfigsByNamespaceWithReleaseKeysNotIn(String appId,
                                                                                   String clusterName,
                                                                                   String
                                                                                           namespaceName,
                                                                                   Set<String>
                                                                                           releaseKeysNotIn) {
        List<InstanceConfig> instanceConfigs = instanceConfigRepository.
                findByConfigAppIdAndConfigClusterNameAndConfigNamespaceNameAndDataChangeLastModifiedTimeAfterAndReleaseKeyNotIn(appId, clusterName,
                        namespaceName, getValidInstanceConfigDate(), releaseKeysNotIn);

        if (CollectionUtils.isEmpty(instanceConfigs)) {
            return Collections.emptyList();
        }

        return instanceConfigs;
    }


    @Transactional
    public int batchDeleteInstanceConfig(String configAppId, String configClusterName, String configNamespaceName) {
        return instanceConfigRepository.batchDelete(configAppId, configClusterName, configNamespaceName);
    }


    @Transactional
    public InstanceConfig createInstanceConfig(InstanceConfig instanceConfig) {
        instanceConfig.setId(0); //protection

        return instanceConfigRepository.save(instanceConfig);
    }

    @Transactional
    public InstanceConfig updateInstanceConfig(InstanceConfig instanceConfig) {
        InstanceConfig existedInstanceConfig = instanceConfigRepository.findById(instanceConfig.getId()).get();
        Preconditions.checkArgument(existedInstanceConfig != null, String.format(
                "Instance config %d doesn't exist", instanceConfig.getId()));

        existedInstanceConfig.setConfigClusterName(instanceConfig.getConfigClusterName());
        existedInstanceConfig.setReleaseKey(instanceConfig.getReleaseKey());
        existedInstanceConfig.setReleaseDeliveryTime(instanceConfig.getReleaseDeliveryTime());
        existedInstanceConfig.setDataChangeLastModifiedTime(instanceConfig
                .getDataChangeLastModifiedTime());

        return instanceConfigRepository.save(existedInstanceConfig);
    }


}
