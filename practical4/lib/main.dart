import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("practical 4"),
      ),
      body:SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 20,
              margin: EdgeInsets.only(top: 130,left:120 ),
              child: Text("First Row",style: TextStyle(fontSize: 20),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 218, 254, 156),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 75, 234, 81),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 130,left: 110),
              child: Text("Second Row",style: TextStyle(fontSize: 20),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 232, 71, 71),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 244, 184, 95),
                ),
              ],
            )
          ],
        )
      ),
     )
    );
  }
}
