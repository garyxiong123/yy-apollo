package com.ctrip.framework.apollo.portal.service.config;

import com.ctrip.framework.apollo.core.dto.ApolloNotificationMessages;
import com.ctrip.framework.apollo.portal.entity.Release;
import com.ctrip.framework.apollo.portal.entity.ReleaseMessage;
import com.ctrip.framework.apollo.portal.service.ReleaseService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * config service with no cache
 *
 * @author Jason Song(song_s@ctrip.com)
 */
public class DefaultConfigService extends AbstractConfigService {

  @Autowired
  private ReleaseService releaseService;

  @Override
  protected Release findActiveOne(long id, ApolloNotificationMessages clientMessages) {
    return releaseService.findActiveOne(id);
  }

  @Override
  protected Release findLatestActiveRelease(String configAppId, String configClusterName, String configNamespace,
                                            ApolloNotificationMessages clientMessages) {
    return releaseService.findLatestActiveRelease(configAppId, configClusterName,
        configNamespace);
  }

  @Override
  public void handleMessage(ReleaseMessage message, String channel) {
    // since there is no cache, so do nothing
  }
}
