package com.ctrip.framework.apollo.config;

import com.ctrip.framework.apollo.model.bo.UserInfo;

import java.util.List;

/**
 * @author Jason Song(song_s@ctrip.com)
 */
public interface UserService {
  List<UserInfo> searchUsers(String keyword, int offset, int limit);

  UserInfo findByUserId(String userId);

  List<UserInfo> findByUserIds(List<String> userIds);

}
