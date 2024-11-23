import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Ensure you have this import

class ViewUrl extends StatelessWidget {
  // Correct the constructor and remove extra declarations
  ViewUrl({super.key});

  // Initialize the WebViewController with correct syntax
  final WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.youtube.com/watch?v=bsgeeJ6-9H0"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: const BackButton(color: Colors.white),
        title: const Text("Title", style: TextStyle(color: Colors.blue)),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
