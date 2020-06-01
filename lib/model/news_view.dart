import 'package:flutter/material.dart';

class NewsViewModel {
  /// 新闻标题
  final String title;

  /// 来源
  final String source;

  /// 评论数量
  final int comments;

  /// 新闻配图
  final String coverImgUrl;

  const NewsViewModel({
    this.title,
    this.source,
    this.comments,
    this.coverImgUrl,
  });
}
