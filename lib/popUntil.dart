
import 'package:flutter/material.dart';
class SecondScreenPop extends StatelessWidget {
  const SecondScreenPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final oldRoute = ModalRoute.of(context);
            final newRoute = MaterialPageRoute(builder: (context) => const ThirdScreenPop());

            // Replace the SecondScreen route with ThirdScreen
            Navigator.of(context).replace(
              oldRoute: oldRoute!,
              newRoute: newRoute,
            );
          },
          child: const Text('Go to Third Screen'),
        ),
      ),
    );
  }
}

class ThirdScreenPop extends StatelessWidget {
  const ThirdScreenPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop until we reach the HomeScreen
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Text('Go Back to Home Screen'),
        ),
      ),
    );
  }
}