package com.ctrip.framework.apollo.common.exception;


import com.ctrip.framework.apollo.common.api.IBaseResultCode;

/**
 * Created by xiongchengwei on 2018/8/17.
 */
public class YyIllegalArgumentException extends BizException {


    public YyIllegalArgumentException(IBaseResultCode iBaseResultCode) {
        super(iBaseResultCode);
    }

    public YyIllegalArgumentException(IBaseResultCode iBaseResultCode, String message) {
        super(iBaseResultCode, message);
    }
}