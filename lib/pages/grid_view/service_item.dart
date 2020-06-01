import 'package:flutter/material.dart';
import 'package:wcloud/model/service_item_view.dart';

class ServiceItem extends StatelessWidget {
  final ServiceItemViewModel data;

  const ServiceItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: <Widget>[
          Expanded(
            child: this.data.icon,
          ),
          Text(
            this.data.title,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF333333)
            ),
          )
        ],
      ),
    );
  }

}