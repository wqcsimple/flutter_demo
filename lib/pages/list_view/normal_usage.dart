import 'package:flutter/material.dart';
import 'package:wcloud/pages/basic_widgets/credit_card.dart';
import 'package:wcloud/pages/basic_widgets/friend_circle.dart';
import 'package:wcloud/pages/basic_widgets/mock_data.dart';
import 'package:wcloud/pages/basic_widgets/pet_card.dart';

class NormalList extends StatelessWidget {

  const NormalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CreditCard(data: creditCardData),
        PetCard(data: petCardData),
        FriendCircle(data: friendCircleData),
      ],
    );
  }


}
