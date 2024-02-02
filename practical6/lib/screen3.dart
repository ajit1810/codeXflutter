import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int count= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment Reset"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            Padding(padding: EdgeInsets.only(bottom: 50)
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        count++;
                      });
                    }, 
                    child: Text("increment")),
                    margin: EdgeInsets.only(right: 30),
                  ),
                  Container(
                    height: 20,
                    width: 100,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        count=0;
                      });
                    }, child: Text("Reset")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}