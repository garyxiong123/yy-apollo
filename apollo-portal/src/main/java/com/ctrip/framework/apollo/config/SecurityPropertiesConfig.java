package com.ctrip.framework.apollo.config;

import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: xiongchengwei
 * @Date: 2019/1/20 下午1:23
 */

@Configuration
@EnableConfigurationProperties(SecurityProperties.class)// 使SecurityProperties生效
public class SecurityPropertiesConfig {
}
