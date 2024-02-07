// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs2015.dart';

class IntroToJavaScript extends StatelessWidget {
  String JavaScript = '''

    class Demo{
      public static void main(String[]args){
          System.out.println("Hello World");
      }
    }

''' ;
  IntroToJavaScript({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programs"),
      ),
      body: Center(
        child: HighlightView(
          JavaScript,
          language: JavaScript,
          theme: vs2015Theme
        ),
      ),
    );
  }
}