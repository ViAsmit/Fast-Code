import 'package:flutter/material.dart';
import 'package:fast_code/components/card.dart';

class RowCard extends StatelessWidget {
  final String img1, img2;
  final String link1, link2;
  RowCard({this.img1, this.img2, this.link1, this.link2});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyCard(img: img1, link: link1),
            MyCard(img: img2, link: link2),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
