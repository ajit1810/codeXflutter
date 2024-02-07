import 'package:codex_app/JavaScript/Topics/IntroToJs.dart';
import 'package:flutter/material.dart';

class JavaScript extends StatefulWidget {
  const JavaScript({super.key});

  @override
  State<JavaScript> createState() => _JavaScriptState();
}

class _JavaScriptState extends State<JavaScript> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JavaScript_Syllabus"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => IntroToJavaScript(),));
        }, child: Text("Introducation")),
      ),
    );
  }
}