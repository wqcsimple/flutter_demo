import 'package:flutter/material.dart';

class PetCardViewModel {
  final String coverUrl;
  final String userImgUrl;
  final String userName;
  final String description;
  final String topic;
  final String publishTime;
  final String publishContent;
  final int replies;
  final int likes;
  final int shares;

  const PetCardViewModel(
      {this.coverUrl,
      this.userImgUrl,
      this.userName,
      this.description,
      this.topic,
      this.publishTime,
      this.publishContent,
      this.replies,
      this.likes,
      this.shares});
}
