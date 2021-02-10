import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

final webViewKey = GlobalKey<_WebViewPageState>();

class WebViewPage extends StatefulWidget {
  static String id = 'web_view_page';
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController _controller;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    final String link = ModalRoute.of(context).settings.arguments;
    final String title = link.split(".")[0].substring(8);
    print(link);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // Navigator.pop(context);
              _controller?.reload();
            },
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (controller) {
          _controller = controller;
        },
        initialUrl: link,
      ),
    );
  }
}
