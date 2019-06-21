package com.ctrip.framework.apollo.config.defaultimpl;

import com.ctrip.framework.apollo.model.bo.Email;
import com.ctrip.framework.apollo.config.EmailService;

public class DefaultEmailService implements EmailService{

  @Override
  public void send(Email email){
    //do nothing
  }
}
