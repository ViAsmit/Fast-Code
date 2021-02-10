import 'package:flutter/material.dart';
import 'package:fast_code/screens/home_screen.dart';
import 'package:fast_code/screens/web_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Code',
      home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        WebViewPage.id: (context) => WebViewPage()
      },
    );
  }
}
