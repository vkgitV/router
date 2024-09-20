import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Back to First Screen'),
          onPressed: () {
            // Go back to the first screen by popping the current route
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
