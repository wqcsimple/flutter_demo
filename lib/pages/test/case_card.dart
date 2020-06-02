import 'package:flutter/material.dart';

class CaseCard extends StatelessWidget {
  const CaseCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: .5, color: Color(0xFFDEE3E7)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[this.renderHeader(), this.renderBody()],
      ),
    );
  }

  Widget renderHeader() {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Color(0xFFFAFBFB),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4), topRight: Radius.circular(4))),
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'assets/icon/case-icon.png',
              ),
              Padding(
                padding: EdgeInsets.only(left: 7),
              ),
              Text(
                'X202023450012',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3C4149)),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "已接收",
                style: TextStyle(fontSize: 14, color: Color(0xFF0096FF)),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 18,
                color: Color(0xFF979797),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget renderBody() {
    return Container(
      padding: EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '标的',
                    style: TextStyle(fontSize: 13, color: Color(0xFF9AA3A8)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  Text(
                    '12.22万元',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0096FF)),
                  )
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '案由',
                    style: TextStyle(fontSize: 13, color: Color(0xFF9AA3A8)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  Text(
                    '民生',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3C4149)),
                  )
                ],
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            height: .5,
            color: Color(0xFFDDDDDD),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 80,
                    child: Text(
                      '被告人',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9AA3A8)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '尉豪',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3C4149)),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 80,
                    child: Text(
                      '被告人电话',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9AA3A8)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '18867991832',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3C4149)),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 80,
                    child: Text(
                      '申请时间',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9AA3A8)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '2020-04-12 11:33:12',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3C4149)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
