import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first app',
      home: Scaffold(
        appBar: AppBar(
          title: Text("my App"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
              Container(
                color: Color.fromARGB(255, 243, 145, 33),
                height: 100,
                width: 100,
              ),
              Container(
                color: Color.fromARGB(96, 246, 82, 189),
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
