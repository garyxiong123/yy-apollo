package com.ctrip.framework.apollo.config;

/**
 * @Author: xiongchengwei
 * @Date: 2019/1/20 下午1:22
 */
import com.ctrip.framework.apollo.enums.LoginType;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "xh.security")
public class SecurityProperties {

    private LoginType loginType = LoginType.JSON; // default json

    public LoginType getLoginType() {
        return loginType;
    }

    public void setLoginType(LoginType loginType) {
        this.loginType = loginType;
    }

}