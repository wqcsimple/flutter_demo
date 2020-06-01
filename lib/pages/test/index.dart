import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
