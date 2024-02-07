
import 'package:codex_app/java/Topics/IntroToJava.dart';
import 'package:flutter/material.dart';

class JavaSyllabus extends StatefulWidget {
  const JavaSyllabus({super.key});

  @override
  State<JavaSyllabus> createState() => _JavaSyllabusState();
}

class _JavaSyllabusState extends State<JavaSyllabus> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("java syllabus"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => IntroToJava(),));
        }, child: Text("Introducation")),
      )
    );
  }
}