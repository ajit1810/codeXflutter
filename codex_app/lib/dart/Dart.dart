import 'package:codex_app/dart/Topics/IntroToDart.dart';
import 'package:flutter/material.dart';

class DartSyllabus extends StatefulWidget {
  const DartSyllabus({super.key});

  @override
  State<DartSyllabus> createState() => _DartSyllabusState();
}

class _DartSyllabusState extends State<DartSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => IntroToDart(),));
        }, child: Text("Introducation")),
      ),
    );
  }
}