import 'package:flutter/material.dart';
import 'package:router/restorablePushNamed.dart';
import 'package:router/secondScreen.dart';
import 'package:router/thirdScreen.dart';

import 'customRoute.dart';
import 'homeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define initial route
      initialRoute: '/',
      // Define named routes in the app
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/restorable':(context) => const ResFirstScreen(),
        '/resSecond':(context) => const ResSecondScreen(),
        '/resThird':(context) => const ResThirdScreen(),
      },
      // Use onGenerateRoute for dynamic routing with custom transitions
      onGenerateRoute: (settings) {
        if (settings.name == '/custom') {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => CustomScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        }
        return null;
      },
    );
  }
}




