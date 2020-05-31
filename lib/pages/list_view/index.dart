import 'package:flutter/material.dart';
import 'package:wcloud/model/demo_tabs.dart';
import 'package:wcloud/pages/list_view/builder_usage.dart';
import 'package:wcloud/pages/list_view/normal_usage.dart';

const List<DemoTabViewModel> demos = [
  DemoTabViewModel(title: "普通用法", widget: NormalList()),
  DemoTabViewModel(title: 'builder用法', widget: SubscribeAccountList()),
];

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    this.tabController = TabController(length: demos.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DemoTabs(
      title: 'ListView组件',
      demos: demos,
      tabController: this.tabController,
    );
  }
}
