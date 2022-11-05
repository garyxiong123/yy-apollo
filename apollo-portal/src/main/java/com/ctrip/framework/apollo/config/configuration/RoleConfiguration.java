package com.ctrip.framework.apollo.config.configuration;

import com.ctrip.framework.apollo.service.RoleInitializationService;
import com.ctrip.framework.apollo.service.RolePermissionService;
import com.ctrip.framework.apollo.config.defaultimpl.DefaultRoleInitializationService;
import com.ctrip.framework.apollo.config.defaultimpl.DefaultRolePermissionService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author Timothy Liu(timothy.liu@cvte.com)
 */
@Configuration
public class RoleConfiguration {
    @Bean
    public RoleInitializationService roleInitializationService() {
        return new DefaultRoleInitializationService();
    }

    @Bean
    public RolePermissionService rolePermissionService() {
        return new DefaultRolePermissionService();
    }
}
