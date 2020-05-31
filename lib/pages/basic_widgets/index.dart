import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:wcloud/model/demo_tabs.dart';
import 'package:wcloud/pages/basic_widgets/credit_card.dart';
import 'package:wcloud/pages/basic_widgets/friend_circle.dart';
import 'package:wcloud/pages/basic_widgets/pet_card.dart';

import 'mock_data.dart';

List<DemoTabViewModel> demos = [
  DemoTabViewModel(title: '宠物卡片', widget: PetCard(data: petCardData)),
  DemoTabViewModel(title: '银行卡', widget: CreditCard(data: creditCardData)),
  DemoTabViewModel(title: '微信朋友圈', widget: FriendCircle(data: friendCircleData)),
]
    .map((item) => DemoTabViewModel(
          title: item.title,
          widget: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[item.widget],
          ),
        ))
    .toList();

class BasicWidgetsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BasicWidgetsPage();
}

class _BasicWidgetsPage extends State<BasicWidgetsPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    initPlatformState();
    this.tabController = new TabController(length: demos.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DemoTabs(
      title: '基础组件',
      demos: demos,
      tabScrollable: false,
      tabController: this.tabController,
    );
  }

  void initPlatformState() async {
    bool res = await FlutterAppBadger.isAppBadgeSupported();
    if (res) {
      FlutterAppBadger.updateBadgeCount(999999);
    }
  }
}
