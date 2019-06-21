package com.ctrip.framework.apollo.config;

/**
 * @Author: xiongchengwei
 * @Date: 2019/1/20 下午1:24
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ctrip.framework.apollo.common.api.HttpUtil;
import com.ctrip.framework.apollo.enums.LoginType;
import org.apache.http.HttpStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 登录成功的处理器
 */
@Component("myAuthenticationSuccessHandler")
public class MyAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private SecurityProperties myProperties;

    // Authentication  封装认证信息
    // 登录方式不同，Authentication不同
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws ServletException, IOException {
        logger.info("MyAuthenticationSuccessHandler login success!");


//        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
//        response.setHeader("Access-Control-Allow-Origin", httpServletRequest.getHeader("Origin"));
//        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
//        response.setHeader("Access-Control-Max-Age", "3600");
//        response.setHeader("Access-Control-Allow-Headers",
//                "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token,content-type,Set-Cookie");
//        response.setHeader("Access-Control-Allow-Credentials", "true");
//        response.setHeader("Access-Control-Expose-Headers", "X-PINGOTHER, Origin, X-Requested-With, Content-Type, Accept,auth_token,Accept-Charset,token,Set-Cookie");
//        // 这里通过判断请求的方法，判断此次是否是预检请求，如果是，立即返回一个204状态吗，标示，允许跨域；预检后，正式请求，这个方法参数就是我们设置的post了
//        if ("OPTIONS".equals(httpServletRequest.getMethod())) {
//            response.setStatus(HttpStatus.SC_NO_CONTENT); // HttpStatus.SC_NO_CONTENT
//            // = 204
//            return;
//        }
//

        if (LoginType.JSON.equals(myProperties.getLoginType())) {
//            response.setContentType("application/json;charset=UTF-8");

//            HttpUtil.setErrorResponse(response, 200, "1", "登陆成功");
            super.onAuthenticationSuccess(request, response, authentication);
        } else {
            // 父类的方法 就是 跳转
            super.onAuthenticationSuccess(request, response, authentication);
        }

    }

}