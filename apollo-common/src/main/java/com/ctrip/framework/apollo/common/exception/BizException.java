package com.ctrip.framework.apollo.common.exception;


import com.ctrip.framework.apollo.common.api.IBaseResultCode;
import com.ctrip.framework.apollo.common.api.Result;
import lombok.Data;

/**
 * Description:
 * <p/>
 * <p> BizException
 * <p/>
 *
 * @author Ping
 * @date 2018/5/7
 */
@Data
public class BizException extends RuntimeException implements IBaseResultCode {

    /**
     * 返回错误码
     **/
    private String code;
    /**
     * 返回错误信息
     **/
    private String desc;

    public BizException(String code) {
        super(code);
        this.code = code;
    }

    public BizException(String code, String desc) {
        super(desc);
        this.desc = desc;
        this.code = code;
    }

    public BizException(IBaseResultCode iBaseResultCode) {
        super(iBaseResultCode.getDesc());
        this.desc = iBaseResultCode.getDesc();
        this.code = iBaseResultCode.getCode();
    }

    public BizException(IBaseResultCode iBaseResultCode, Throwable e) {
        super(e);
        this.desc = iBaseResultCode.getDesc();
        this.code = iBaseResultCode.getCode();
    }

    public BizException(IBaseResultCode iBaseResultCode, String desc) {
        super(desc);
        this.desc = desc;
        this.code = iBaseResultCode.getCode();
    }

    public BizException(String code, String desc, Throwable cause) {
        super(desc, cause);
        this.code = code;
        this.desc = desc;
    }

    public BizException(String code, Throwable cause) {
        super(cause);
        this.code = code;
    }

    public BizException(String desc, Throwable cause, boolean enableSuppression, boolean writableStackTrace, String code) {
        super(desc, cause, enableSuppression, writableStackTrace);
        this.code = code;
        this.desc = desc;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Result getResult() {
        return Result.fail(code, this.getDesc() != null ? this.getDesc() : "something wrong!");
    }




}
