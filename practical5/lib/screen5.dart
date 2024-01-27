import 'package:flutter/material.dart';
class screen5 extends StatelessWidget {
  const screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("container radius"),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
            ),
        ),
      ),
    );
  }
}