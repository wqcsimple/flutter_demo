import 'package:flutter/material.dart';
import 'package:wcloud/pages/grid_view/mock_data.dart';
import 'package:wcloud/pages/grid_view/service_item.dart';

class ServiceCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 5,
        padding: EdgeInsets.symmetric(vertical: 0),
        children: serviceList.map((item) => ServiceItem(data: item)).toList());
  }
}
