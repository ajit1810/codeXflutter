
import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            ],
          ),
        ),
      ),
    );
  }
}
