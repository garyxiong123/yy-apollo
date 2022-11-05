package com.ctrip.framework.apollo.config;

import com.ctrip.framework.apollo.model.bo.Email;

public interface EmailService {

  void send(Email email);

}
