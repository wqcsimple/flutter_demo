import 'package:flutter/material.dart';
import 'package:wcloud/model/subscribe_account_view.dart';

class SubscribeAccountCard extends StatelessWidget {
  final SubscribeAccountViewModel data;

  const SubscribeAccountCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          this.renderAccountInfo(),
          this.renderCover(),
          this.renderArticles()
        ],
      ),
    );
  }

  Widget renderAccountInfo() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(this.data.accountImgUrl),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(
                this.data.accountName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF666666),
                ),
              ),
            ],
          ),
          Text(
            this.data.publishTime,
            style: TextStyle(fontSize: 13, color: Color(0xFF999999)),
          )
        ],
      ),
    );
  }

  Widget renderCover() {
    final article = this.data.articles[0];
    final shouldClip = this.data.articles.length <= 1;
    return ClipRRect(
      borderRadius: !shouldClip
          ? BorderRadius.circular(0)
          : BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Image.network(
            article.coverImgUrl,
            height: 150,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 100,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black54])),
              child: Text(
                article.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget renderArticles() {
    final articles = this.data.articles.sublist(1);
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                    articles[index].title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF333333)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),),
                Image.network(
                  articles[index].coverImgUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: .5,
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Color(0xFFDDDDDD),
          );
        },
        itemCount: articles.length);
  }
}
