import 'package:flutter/material.dart';
import 'package:wcloud/pages/list_view/mock_data.dart';
import 'package:wcloud/pages/list_view/subscribe_account_card.dart';

class SubscribeAccountList extends StatelessWidget {
  const SubscribeAccountList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEFEFEF),
      child: ListView.builder(
        itemCount: subscribeAccountList.length,
        itemBuilder: (context, index) {
          return SubscribeAccountCard(data: subscribeAccountList[index]);
        },
      ),
    );
  }
}
