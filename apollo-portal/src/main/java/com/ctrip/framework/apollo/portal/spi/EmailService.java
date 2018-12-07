package com.ctrip.framework.apollo.portal.spi;

import com.ctrip.framework.apollo.bo.Email;

public interface EmailService {

  void send(Email email);

}
