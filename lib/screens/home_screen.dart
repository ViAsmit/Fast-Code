import 'package:fast_code/components/row_card.dart';
import 'package:flutter/material.dart';
import 'package:fast_code/components/footer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
              ),
              TypewriterAnimatedTextKit(
                speed: Duration(milliseconds: 500),
                totalRepeatCount: 10,
                text: ['Fast Code'],
                textStyle: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 60.0),
          RowCard(
              img1: 'code.jpeg',
              link1: 'https://codecanyon.net/',
              img2: 'forest.jpeg',
              link2: 'https://themeforest.net/'),
          RowCard(
            img1: 'hive.jpeg',
            link1: 'https://videohive.net/',
            img2: 'river.jpeg',
            link2: 'https://graphicriver.net/',
          ),
          MyFooter(),
        ],
      ),
    );
  }
}
