import 'package:flutter/material.dart';
class CustomScreen extends StatelessWidget {
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Screen with Fade Transition'),
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
