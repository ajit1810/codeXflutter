import 'package:codex_app/python/Topics/IntroToPython.dart';
import 'package:flutter/material.dart';

class Python_Syllabus extends StatefulWidget {
  const Python_Syllabus({super.key});

  @override
  State<Python_Syllabus> createState() => _Python_SyllabusState();
}

class _Python_SyllabusState extends State<Python_Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python Syllabus"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => IntroToPython(),));
        }, child: Text("Introducation")),
      ),
    );
  }
}