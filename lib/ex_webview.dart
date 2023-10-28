import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EXWebView extends StatefulWidget {
  @override
  State<EXWebView> createState() => _EXWebViewState();
}

class _EXWebViewState extends State<EXWebView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(Uri.parse('https://flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Example webview"),
      ),
      body: Center(
        child: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
