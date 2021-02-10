import 'package:fast_code/screens/web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _openUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyFooter extends StatefulWidget {
  @override
  _MyFooterState createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 0.01),
          child: Container(
            height: 125.0,
            padding: EdgeInsets.only(bottom: 5.0),
            color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // FooterIcon(
                    //   icon: FontAwesomeIcons.phoneAlt,
                    //   onPress: () {
                    //     print('y');
                    //     setState(() {
                    //       _openUrl('tel:+918574758395');
                    //     });
                    //   },
                    // ),
                    FooterIcon(
                      icon: FontAwesomeIcons.envelope,
                      onPress: () {
                        print('y');
                        setState(() {
                          _openUrl('mailto:fastcodeenvato@gmail.com');
                        });
                      },
                    ),
                    FooterIcon(
                      icon: FontAwesomeIcons.whatsapp,
                      onPress: () {
                        print('y');
                        setState(() {
                          _openUrl(
                              "https://wa.me/+919315066314?text=Your Message Here!");
                        });
                      },
                    ),
                  ],
                ),
                // Text('Copyright © 2021 TradeMark Inc.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FooterIcon extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  const FooterIcon({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          color: Colors.red,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: IconButton(
            icon: new FaIcon(
              icon,
            ),
            color: Colors.white,
            onPressed: onPress,
          ),
        ),
      ),
    );
  }
}
