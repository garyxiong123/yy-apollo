package com.ctrip.framework.apollo.common.api;

import java.util.Map;

/**
 * Created by xiongchengwei on 2018/8/17.
 */
public class MapResult<K, V> extends Result<Map<K, V>> {

    protected MapResult() {
    }

    protected MapResult(Map<K, V> data) {
        this.data = data;
    }
}
