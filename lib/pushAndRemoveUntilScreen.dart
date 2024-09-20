import 'package:flutter/material.dart';

import 'homeScreen.dart';
class PushAndRemoveUntilScreen extends StatelessWidget {
  const PushAndRemoveUntilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pushAndRemoveUntilScreen'),
      ),
      body: Center(
        child:
            ElevatedButton(
              child: const Text('Go to Home Screen'),
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context,MaterialPageRoute(
                  builder: (context) => const HomeScreen(),

                ),(route) => false,

                );
              },
        ),
      ),
    );
  }
}
