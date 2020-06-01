import 'package:flutter/material.dart';

class ProgrammeViewModel {
  /// 节目名称
  final String title;

  /// 播放量
  final int playsCount;

  /// 封面图地址
  final String coverImgUrl;

  /// 是否需要vip才能观看
  final bool needVip;

  const ProgrammeViewModel({
    this.title,
    this.playsCount,
    this.coverImgUrl,
    this.needVip,
  });
}
