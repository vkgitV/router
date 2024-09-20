
import 'package:flutter/material.dart';
import 'package:router/popUntil.dart';
import 'package:router/pushAndRemoveUntilScreen.dart';
import 'package:router/replacementScreen.dart';
import 'package:router/thirdScreen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to SecondScreen using named route
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Second Screen (Named Route)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ThirdScreen using MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text('Go to Third Screen (MaterialPageRoute)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to CustomScreen using custom page route
                Navigator.pushNamed(context, '/custom');
              },
              child: const Text('Go to Custom Screen (Custom Transition)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Replace current route with SecondScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ReplacementScreen()),
                );
              },
              child: const Text('Replace with Second Screen (PushReplacement)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Clear stack and navigate to ThirdScreen
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const PushAndRemoveUntilScreen()),
                      (Route<dynamic> route) => false,
                );
              },
              child: const Text('Go to Third Screen (PushAndRemoveUntil)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ThirdScreen using MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreenPop()),
                );
              },
              child: const Text('Go to Second Screen (popUntil)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/restorable');
              },
              child: const Text('Go to Second Screen(restorablepushnamed)'),
            ),
          ],
        ),
      ),
    );
  }
}
