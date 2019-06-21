package com.ctrip.framework.apollo.common.api;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

/**
 * @author superwen
 * @date 2018/5/21 下午3:20
 */
@Getter
@Setter
@ToString(callSuper = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ErrorResult<T> extends Result<T> {

    private String spanId;

    private String traceId;

    private LocalDateTime timestamp = LocalDateTime.now();

    protected ErrorResult() {
    }

    protected ErrorResult(String code, String desc) {
        super(code, desc);
    }

    protected ErrorResult(IBaseResultCode baseResultCode) {
        super(baseResultCode);
    }

    protected ErrorResult(IBaseResultCode baseResultCode, String desc) {
        super(baseResultCode);
        this.desc = desc;
    }


    protected ErrorResult(IBaseResultCode baseResultCode, Throwable throwable) {
        super(baseResultCode, throwable);
    }

    protected ErrorResult(String code, String desc, T data) {
        super(code, desc, data);
    }

}
