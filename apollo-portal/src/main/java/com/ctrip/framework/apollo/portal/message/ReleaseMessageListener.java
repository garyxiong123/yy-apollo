package com.ctrip.framework.apollo.portal.message;


import com.ctrip.framework.apollo.portal.entity.ReleaseMessage;

/**
 * @author Jason Song(song_s@ctrip.com)
 */
public interface ReleaseMessageListener {
  void handleMessage(ReleaseMessage message, String channel);
}
