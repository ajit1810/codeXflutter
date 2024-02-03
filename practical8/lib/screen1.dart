import 'package:flutter/material.dart';
import 'package:practical8/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    print("build method called on button pressed");
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Screen1"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>Screen2())
            );
        }, child: Text("go to Screen2")),
      ),
    );
  }
}