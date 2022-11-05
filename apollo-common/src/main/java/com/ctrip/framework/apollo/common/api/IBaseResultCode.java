package com.ctrip.framework.apollo.common.api;

import java.io.Serializable;

public interface IBaseResultCode extends Serializable {

    /**
     * Return status code.
     *
     * @return
     */
    String getCode();

    /**
     * Return description of the status.
     *
     * @return
     */
    String getDesc();
}
