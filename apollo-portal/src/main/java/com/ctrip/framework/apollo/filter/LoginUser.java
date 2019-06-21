package com.ctrip.framework.apollo.filter;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author: xiongchengwei
 * @Date: 2019/1/21 下午4:05
 */
@Builder
@AllArgsConstructor
@Data
public class LoginUser implements Serializable {
    private String username;
    private String password;
    private String loginMode;
    private String loginSubmit;
}
