import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class screen6 extends StatelessWidget {
  const screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("columns scrollable"),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
         child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
               color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
               color: Color.fromARGB(255, 118, 65, 8),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
               color: Color.fromARGB(255, 101, 167, 242),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
               color: Color.fromARGB(255, 223, 227, 104),
            ),
          ],
        ),
        ),
        )
      ),
    );
  }
}