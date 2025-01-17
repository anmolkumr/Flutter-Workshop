import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Text('Hello, World!'),
              Text('This is my first app.'),
              FilledButton(onPressed: () {}, child: Text('Click me!')),
            ],
          ),
        ));
  }
}
