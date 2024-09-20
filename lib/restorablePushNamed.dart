import 'package:flutter/material.dart';
class ResFirstScreen extends StatelessWidget {
  const ResFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Use restorablePushNamed to push a named route
            Navigator.restorablePushNamed(context, '/resSecond');
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class ResSecondScreen extends StatelessWidget {
  const ResSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.restorablePushNamed(context, '/resThird');
          },
          child: const Text('Go to Third Screen'),
        ),
      ),
    );
  }
}

class ResThirdScreen extends StatelessWidget {
  const ResThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to Second Screen'),
        ),
      ),
    );
  }
}