import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int count=0;

  void fun(){
    setState(() {
      count++;
    });
  }

  Widget MyContainer1(){
    if(count>=1){
      return Container(
        height: 100,
        width: 100,
        color: Colors.black,
        margin: EdgeInsets.only(bottom: 10),
      );
    }
    return Container();
  }

  Widget MyContainer2(){
    if(count>=2){
      return Container(
        height: 100,
        width: 100,
        color: Colors.amber,
        margin: EdgeInsets.only(bottom: 10),
      );
    }
    return Container();
  }

  Widget MyContainer3(){
    if(count>=3){
      return Container(
        height: 100,
        width: 100,
        color: Colors.brown,
        margin: EdgeInsets.only(bottom: 10),
      );
    }
    return Container();
  }

  Widget MyContainer4(){
    if(count>=4){
      return Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      floatingActionButton: IconButton(onPressed: fun, icon: Icon(Icons.add)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyContainer1(),
            MyContainer2(),
            MyContainer3(),
            MyContainer4()
          ],
        ),
      ),
    ); 
  }
}