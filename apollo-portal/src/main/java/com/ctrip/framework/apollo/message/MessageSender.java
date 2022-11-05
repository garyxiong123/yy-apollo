package com.ctrip.framework.apollo.message;

/**
 * @author Jason Song(song_s@ctrip.com)
 */
public interface MessageSender {
  void sendMessage(String message, String channel);
}
