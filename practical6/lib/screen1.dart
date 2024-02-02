

import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool boxcolor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Box Color Change"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: boxcolor ? Colors.amber : Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  boxcolor = !boxcolor;
                });
              }, child: Text("click"))
            ],
          ),
        ),
    );
  }
}