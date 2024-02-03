import 'package:flutter/material.dart';
// import 'package:practical7/screen1.dart';
// import 'package:practical7/screen2.dart';
// import 'package:practical7/screen3.dart';
import 'package:practical7/screen4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Screen4(),
    );
  }
}
