import 'package:flutter/material.dart';
import 'UI/phone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff1a73e9),
      ),
      home: Phone(),
    );
  }
}
