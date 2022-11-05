package com.ctrip.framework.apollo;

import com.ctrip.framework.apollo.common.ApolloCommonConfig;
import com.ctrip.framework.apollo.common.filter.YyCorsFilter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.servlet.Filter;

@ComponentScan(basePackageClasses = {ApolloCommonConfig.class,
        PortalApplication.class})
@EnableAspectJAutoProxy
@Configuration
@EnableAutoConfiguration
@EnableTransactionManagement
public class PortalApplication extends WebMvcConfigurerAdapter {

    public static void main(String[] args) {
        ConfigurableApplicationContext ctx = SpringApplication.run(PortalApplication.class, args);
        System.out.println();

        System.out.println();
    }

//       @Override
//     public void addCorsMappings(CorsRegistry registry) {
//         registry.addMapping("/**")
//                 .allowedHeaders("*")
//                 .allowedMethods("*")
//                 .allowedOrigins("*");
//     }
//@Bean
// public FilterRegistrationBean corsFilter() {
//     UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//     CorsConfiguration config = new CorsConfiguration();
//     config.addAllowedOrigin("*");
//     config.setAllowCredentials(true);
//     config.addAllowedHeader("*");
//     config.addAllowedMethod("*");
//     source.registerCorsConfiguration("/**", config);
//
//     FilterRegistrationBean bean = new FilterRegistrationBean(new CorsFilter(source));
//     bean.setOrder(0);//配置CorsFilter优先级
//     return bean;
// }
//

//    @Bean
//    public Filter yyCorsFilter() {
//        return new YyCorsFilter();
//    }
//
//    //
////    @Order(Integer.MAX_VALUE)
//    @Bean
//    public FilterRegistrationBean someFilterRegistration() {
//        FilterRegistrationBean registration = new FilterRegistrationBean();
//        registration.setFilter(yyCorsFilter());
//        registration.addUrlPatterns("/*");
////        registration.addInitParameter("paramName", "paramValue");
//        registration.setName("yyCorsFilter");
//       ;
//        registration.setOrder(Ordered.LOWEST_PRECEDENCE);
//        return registration;
//    }

//    /**
//     * 创建一个bean
//     * @return
//     */
//    @Bean(name = "sessionFilter")
//    public YyCorsFilter sessionFilter() {
//        return new YyCorsFilter();
//    }
}
