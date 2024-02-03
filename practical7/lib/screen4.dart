import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        // scrollDirection: Axis.vertical,
        scrollDirection:Axis.horizontal,
        children: [
          Container(
            height: 600,
            width: 600,
            color: Colors.orange,
          ),
           Container(
            height: 600,
            width: 600,
            color: Colors.white,
          ),
           Container(
            height: 600,
            width: 600,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}