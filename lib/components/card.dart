import 'package:flutter/material.dart';
import 'package:fast_code/screens/web_view.dart';

class MyCard extends StatelessWidget {
  final String img, link;
  MyCard({this.img, this.link});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.0),
            ),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: FlatButton(
              onPressed: () {
                print('u');
                Navigator.pushNamed(context, WebViewPage.id, arguments: link);
              },
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  'images/$img',
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  height: 125.0,
                  width: 125.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
