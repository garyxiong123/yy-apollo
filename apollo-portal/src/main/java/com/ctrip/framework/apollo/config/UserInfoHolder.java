package com.ctrip.framework.apollo.config;

import com.ctrip.framework.apollo.model.bo.UserInfo;

/**
 * Get access to the user's information,
 * different companies should have a different implementation
 */
public interface UserInfoHolder {

  UserInfo getUser();

}
