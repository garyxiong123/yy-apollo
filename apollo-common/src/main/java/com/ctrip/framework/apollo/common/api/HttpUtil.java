package com.ctrip.framework.apollo.common.api;


import com.alibaba.fastjson.JSONObject;
import com.ctrip.framework.apollo.common.exception.BizException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author liujianming
 * @date 2018/12/17 11:40
 */
@Slf4j
public class HttpUtil {
    public static void setErrorResponse(HttpServletResponse response, int httpStatus, String code, String message) {
        response.addHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
        response.setStatus(httpStatus);
        PrintWriter writer = null;
        try {
            writer = response.getWriter();
            writer.print(JSONObject.toJSONString(Result.fail(code, message)));
            writer.flush();
        } catch (IOException e) {
            log.error("Error Response can't getWrite", e);
            throw new BizException("1000", "返回值写入失败");
        } finally {
            writer.close();
        }
    }
}
