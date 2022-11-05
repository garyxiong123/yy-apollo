package com.ctrip.framework.apollo.message;


import com.ctrip.framework.apollo.model.entity.ReleaseMessage;

/**
 * @author Jason Song(song_s@ctrip.com)
 */
public interface ReleaseMessageListener {
  void handleMessage(ReleaseMessage message, String channel);
}
