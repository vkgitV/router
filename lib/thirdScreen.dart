
import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop the current route and go back to HomeScreen
            Navigator.pop(context);
          },
          child: const Text('Back to Home Screen'),
        ),
      ),
    );
  }
}
