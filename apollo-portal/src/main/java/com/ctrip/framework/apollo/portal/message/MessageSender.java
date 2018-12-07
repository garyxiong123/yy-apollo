package com.ctrip.framework.apollo.portal.message;

/**
 * @author Jason Song(song_s@ctrip.com)
 */
public interface MessageSender {
  void sendMessage(String message, String channel);
}
