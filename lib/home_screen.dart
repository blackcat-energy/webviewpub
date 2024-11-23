import 'package:flutter/material.dart';
import 'view_url.dart'; // Add this line to import the ViewUrl screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'WebView',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewUrl()), // Navigate to ViewUrl
            );
          },
          child: const Text("Open"),
        ),
      ),
    );
  }
}
