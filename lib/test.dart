import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebViewExample extends StatefulWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Enable JavaScript
      ..setBackgroundColor(const Color(0xFFFFFFFF)) // Set background color
      ..setNavigationDelegate(NavigationDelegate(
        onWebResourceError: (error) {
          debugPrint("Error loading page: ${error.description}");
        },
      ));
    _loadHtmlContent();
  }

  void _loadHtmlContent() {
    const String htmlContent = '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
      <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 10px;
          line-height: 1.6;
          font-size: 16px;
        }
        img {
          max-width: 100%;
          height: auto;
        }
        .title {
          font-size: 22px;
          font-weight: bold;
          margin-bottom: 10px;
        }
        .date-created {
          font-size: 14px;
          color: gray;
        }
        .description {
          font-size: 16px;
        }
      </style>
    </head>
    <body>
      
    </body>
    </html>
    ''';

    _controller.loadHtmlString(htmlContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _loadHtmlContent();
            },
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
