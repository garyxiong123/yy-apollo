//package com.ctrip.framework.apollo.portal;
//
//import com.ctrip.framework.apollo.portal.config.BizConfig;
//import com.ctrip.framework.apollo.portal.controller.ConfigFileController;
//import com.ctrip.framework.apollo.portal.controller.NotificationController;
//import com.ctrip.framework.apollo.portal.controller.NotificationControllerV2;
//import com.ctrip.framework.apollo.portal.message.ReleaseMessageScanner;
//import com.ctrip.framework.apollo.portal.service.ReleaseMessageServiceWithCache;
//import com.ctrip.framework.apollo.portal.service.config.ConfigService;
//import com.ctrip.framework.apollo.portal.service.config.ConfigServiceWithCache;
//import com.ctrip.framework.apollo.portal.service.config.DefaultConfigService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
///**
// * @author Jason Song(song_s@ctrip.com)
// */
//@Configuration
//public class ConfigServiceAutoConfiguration {
//
//  @Autowired
//  private BizConfig bizConfig;
//
//  @Bean
//  public GrayReleaseRulesHolder grayReleaseRulesHolder() {
//    return new GrayReleaseRulesHolder();
//  }
//
//  @Bean
//  public ConfigService configService() {
//    if (bizConfig.isConfigServiceCacheEnabled()) {
//      return new ConfigServiceWithCache();
//    }
//    return new DefaultConfigService();
//  }
//
//  @Configuration
//  static class MessageScannerConfiguration {
//    @Autowired
//    private NotificationController notificationController;
//    @Autowired
//    private ConfigFileController configFileController;
//    @Autowired
//    private NotificationControllerV2 notificationControllerV2;
//    @Autowired
//    private GrayReleaseRulesHolder grayReleaseRulesHolder;
//    @Autowired
//    private ReleaseMessageServiceWithCache releaseMessageServiceWithCache;
//    @Autowired
//    private ConfigService configService;
//
//    @Bean
//    public ReleaseMessageScanner releaseMessageScanner() {
//      ReleaseMessageScanner releaseMessageScanner = new ReleaseMessageScanner();
//      //0. handle release message cache
//      releaseMessageScanner.addMessageListener(releaseMessageServiceWithCache);
//      //1. handle gray release rule
//      releaseMessageScanner.addMessageListener(grayReleaseRulesHolder);
//      //2. handle server cache
//      releaseMessageScanner.addMessageListener(configService);
//      releaseMessageScanner.addMessageListener(configFileController);
//      //3. notify clients
//      releaseMessageScanner.addMessageListener(notificationControllerV2);
//      releaseMessageScanner.addMessageListener(notificationController);
//      return releaseMessageScanner;
//    }
//  }
//
//}
