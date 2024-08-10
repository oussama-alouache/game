import 'package:flutter/material.dart';
import 'package:oudd/cont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Cont(
        Colors.red,
        Colors.yellow,
      )),
    );
  }
}
