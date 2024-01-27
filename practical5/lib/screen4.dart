import 'package:flutter/material.dart';
class screen4 extends StatelessWidget {
  const screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row scrollable network image"),
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
                      width: 200,
                      color: Color.fromARGB(255, 247, 99, 190),
                      child: Image.network("https://cdn.pixabay.com/photo/2015/07/09/22/45/tree-838667_640.jpg",
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 211, 91, 48),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 78, 111, 222),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 44, 243, 60),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 226, 100, 188),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-9KdttpYgJlDRVUSu-mxf0lo_2ZiW9CSNpHU1ChgUKw&s",
                        fit:BoxFit.cover,),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 196, 234, 83),
                    ),
                     SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 211, 91, 48),
                    ),
                     SizedBox(
                      width: 30,
                    ),
                     Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 214, 236, 90),
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