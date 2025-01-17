import 'package:flutter/material.dart';
import 'secapp.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          Text('Hello World!'),
          Text('This is my first app!'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SecondApp()));
              },
              child: Text('buttonText')),
        ],
      )),
    );
  }
}
