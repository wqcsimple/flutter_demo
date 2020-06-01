import 'package:flutter/material.dart';
import 'package:wcloud/pages/list_view/friend_card.dart';
import 'package:wcloud/pages/list_view/mock_data.dart';

class FriendList extends StatelessWidget {
  const FriendList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return FriendCard(data: friendList[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 5,
            indent: 75,
            color: Color(0xFFDDDDDD),
          );
        },
        itemCount: friendList.length);
  }
}
