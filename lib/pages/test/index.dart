import 'package:flutter/material.dart';
import 'package:wcloud/pages/test/case_card.dart';

class TestViewDemo extends StatefulWidget {
  @override
  _TestViewDemo createState() => _TestViewDemo();
}

class _TestViewDemo extends State<TestViewDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('练习练习'),
        ),
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[this.renderHeader(), this.renderBody()],
          ),
        ));
  }

  Widget renderHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      color: Color(0xFF0096FF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1699287406,228622974&fm=26&gp=0.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  '石秋秋',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
          FlatButton.icon(
            icon: Icon(
              Icons.add,
              color: Color(0xFF0096FF),
            ),
            label: Text(
              '新增申请',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0096FF)),
            ),
            onPressed: () {
              // 按钮点击
            },
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          )
        ],
      ),
    );
  }

  Widget renderBody() {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 10,
            );
          },
          itemCount: 10,
          itemBuilder: (context, index) {
            return CaseCard();
          }),
    ));
  }
}
