package com.ctrip.framework.apollo.common.api;

import java.util.List;

/**
 * Created by xiongchengwei on 2018/8/17.
 */
public class ListResult<T> extends Result<List<T>> {

    protected ListResult() {
    }


    public ListResult(List<T> data) {
        this.data = data;
    }

}
