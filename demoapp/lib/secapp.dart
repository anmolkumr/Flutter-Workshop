import 'package:flutter/material.dart';
import 'firstapp.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second App'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          Text('Hello World!'),
          Text('This is my second app!'),
        ],
      )),
    );
  }
}
