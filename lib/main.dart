import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/NewPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: NewPage(),),
    );
  }
}