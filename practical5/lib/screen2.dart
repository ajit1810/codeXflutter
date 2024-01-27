import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("columns network image"),
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
               color: const Color.fromARGB(255, 240, 105, 105),
               child: Image.network("https://akm-img-a-in.tosshub.com/aajtak/images/story/202312/65885623833df-ram-mandir-212900322-16x9.jpg",
               fit: BoxFit.cover,
               ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
               color: Color.fromARGB(255, 104, 71, 35),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
               color: Color.fromARGB(255, 109, 237, 132),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBtY2Xg4noKQZscvzNeUUQ1R5gkCoHrZZn4R2G6gez3iTp2kBgyh5N1GgLzmojBnjSElQ&usqp=CAU" ,
                  fit: BoxFit.cover,
                ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
               color: Color.fromARGB(255, 218, 223, 84),
            ),
          ],
        ),
        ),
        )
      ),
    );
  }
}