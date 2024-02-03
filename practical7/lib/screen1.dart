import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Widget fun(){
    print("this is fun method");
    return Scaffold(
      appBar:  AppBar(
        title: Text("AppBAr"),
      ),
    );
  }
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return fun();
  }
}