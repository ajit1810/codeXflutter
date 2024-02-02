

import 'package:flutter/material.dart';
// import 'package:practical6/screen2.dart';
import 'package:practical6/screen3.dart';
// import 'screen1.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen3(),
    );
  }
}
