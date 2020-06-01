import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:wcloud/pages/list_view/news_card.dart';

import 'mock_data.dart';

class PullDownRefreshList extends StatefulWidget {
  const PullDownRefreshList();

  @override
  _PullDownRefreshList createState() => _PullDownRefreshList();
}

class _PullDownRefreshList extends State<PullDownRefreshList> {
  List list = newsList;

  Future onRefresh() {
    return Future.delayed(Duration(seconds: 1), () {
      Toast.show('当前已是最新数据', context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: this.onRefresh,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return NewsCard(data: this.list[index]);
          },
          separatorBuilder: (content, index) {
            return Divider(
              height: .5,
              color: Color(0xFFDDDDDD),
            );
          },
          itemCount: this.list.length),
    );
  }
}
