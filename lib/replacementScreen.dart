
import 'package:flutter/material.dart';
import 'package:router/homeScreen.dart';
class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReplaceMent Screen'),

      ),
      body: Center(
        child:
            ElevatedButton(
              child: const Text('Go to Home screen'),
              onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const HomeScreen(),));
         // Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen(),));
              },
        ),
      ),
    );
  }
}
