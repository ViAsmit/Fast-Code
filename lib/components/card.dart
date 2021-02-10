import 'package:flutter/material.dart';
import 'package:fast_code/screens/web_view.dart';

class MyCard extends StatelessWidget {
  final String img, link;
  MyCard({this.img, this.link});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2.0),
      ),
      child: RawMaterialButton(
        onPressed: () {
          print('u');
          Navigator.pushNamed(context, WebViewPage.id, arguments: link);
        },
        child: Image.asset(
          'images/$img',
          alignment: Alignment.center,
          fit: BoxFit.fill,
          height: 125.0,
          width: 125.0,
        ),
      ),
    );
  }
}
