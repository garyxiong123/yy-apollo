package com.ctrip.framework.apollo.config;

/**
 * @Author: xiongchengwei
 * @Date: 2019/1/20 下午1:25
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ctrip.framework.apollo.common.api.HttpUtil;
import com.ctrip.framework.apollo.common.enums.BaseResultCode;
import com.ctrip.framework.apollo.config.SecurityProperties;
import com.ctrip.framework.apollo.enums.LoginType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * 登录失败的处理器
 */
@Component("myAuthenctiationFailureHandler")
public class MyAuthenctiationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private SecurityProperties securityProperties;

    // AuthenticationException 认证过程中产生的异常
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException exception) throws IOException, ServletException {
        logger.info("MyAuthenticationSuccessHandler login failure!");
        if (LoginType.JSON.equals(securityProperties.getLoginType())) {
            response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
            response.setContentType("application/json;charset=UTF-8");
//          response.getWriter().write(objectMapper.writeValueAsString(exception));
            //TODO fix it to callResult
            HttpUtil.setErrorResponse(response, 200, BaseResultCode.LOGIN_FAIL.getCode(), "登陆失败");
//            response.getWriter().write(objectMapper.writeValueAsString(new SimpleResponse(exception.getMessage())));
        } else {
            super.onAuthenticationFailure(request, response, exception);
        }
    }

}