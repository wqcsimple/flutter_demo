import 'package:flutter/material.dart';

class SubscribeAccountViewModel {
  /// 公众号头像
  final String accountImgUrl;

  /// 公众号名字
  final String accountName;

  /// 发布时间
  final String publishTime;

  /// 文章列表
  final List<Article> articles;

  const SubscribeAccountViewModel({
    this.accountImgUrl,
    this.accountName,
    this.publishTime,
    this.articles,
  });
}

class Article {
  /// 封面图
  final String coverImgUrl;

  /// 文章标题
  final String title;

  const Article({
    this.coverImgUrl,
    this.title,
  });
}