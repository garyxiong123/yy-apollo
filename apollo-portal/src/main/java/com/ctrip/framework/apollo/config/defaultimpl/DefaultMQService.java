package com.ctrip.framework.apollo.config.defaultimpl;

import com.ctrip.framework.apollo.core.enums.Env;
import com.ctrip.framework.apollo.model.bo.ReleaseHistoryBO;
import com.ctrip.framework.apollo.config.MQService;

public class DefaultMQService implements MQService{

  @Override
  public void sendPublishMsg(Env env, ReleaseHistoryBO releaseHistory) {
    //do nothing
  }

}
