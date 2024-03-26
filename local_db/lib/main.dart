
import 'package:flutter/material.dart';
import 'package:local_db/homepage.dart';
import 'package:local_db/localdb.dart';


void main() {
  createDB();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
