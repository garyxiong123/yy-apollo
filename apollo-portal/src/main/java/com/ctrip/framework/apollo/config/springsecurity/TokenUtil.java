package com.ctrip.framework.apollo.config.springsecurity;

/**
 * @Author: xiongchengwei
 * @Date: 2019/4/30 下午4:26
 */
public class TokenUtil {
    private static final String PREFIX = "Bearer ";

    public static String getToken(String token) {
        String generateToken = PREFIX + token;

        return generateToken;
    }

    public static boolean isLogin(String header) {
        return header.startsWith(PREFIX);
    }

    /**
     * 获取原始token值
     * @param token
     * @return
     */
    public static String getOriginToken(String token) {
        return token.replace("Bearer ", "");
    }
}
