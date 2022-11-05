package com.ctrip.framework.apollo.config;

import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.model.bo.ReleaseHistoryBO;

public interface MQService {

  void sendPublishMsg(Env env, ReleaseHistoryBO releaseHistory);

}
