import 'package:flutter/material.dart';

class FriendViewModel {
  /// 用户昵称
  final String userName;

  /// 用户头像
  final String userImgUrl;

  /// 消息内容
  final String msgContent;

  /// 消息收到时间
  final String msgTime;

  const FriendViewModel({
    this.userName,
    this.userImgUrl,
    this.msgContent,
    this.msgTime,
  });
}