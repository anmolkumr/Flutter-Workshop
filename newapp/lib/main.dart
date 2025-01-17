import 'package:flutter/material.dart';
import 'mypage.dart';
void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Mypage(),
    );
  }
}