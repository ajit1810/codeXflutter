import 'package:flutter/material.dart';
import 'package:practical8/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    print("build method called on pressed container");
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation screen3"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder:(context)=>Screen4())
              );
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}