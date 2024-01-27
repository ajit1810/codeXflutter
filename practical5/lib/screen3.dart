import 'package:flutter/material.dart';
class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row scrollable normal image"),
          centerTitle: true,
        ),
        body: Center(
          child:SizedBox(
            width:double.infinity,
            // color: Color.fromARGB(255, 13, 7, 1),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      child: Image.asset("images/nature.jpg",
                      fit: BoxFit.cover,
                      ),
                      height: 200,
                      width: 300,
                      color: Color.fromARGB(255, 233, 75, 196),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 300,
                      color: Color.fromARGB(255, 151, 238, 114),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 300,
                      color: Color.fromARGB(255, 239, 85, 51),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 300,
                      color: Color.fromARGB(255, 244, 71, 192),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 300,
                      color: Color.fromARGB(255, 239, 85, 51),
                      child: Image.asset("images/virat.jpeg",
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 300,
                      color: Color.fromARGB(255, 71, 220, 143),
                    ),
                  ],
                ),
            ),
          )
        ),
      ),
    );
  }
}