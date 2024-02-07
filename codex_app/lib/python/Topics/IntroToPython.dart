// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class IntroToPython extends StatelessWidget {
  String pythoncode= '''

  class Demo{
    public static void main(){
      System.out.println("Hello World");
    }
  }


''' ;
  IntroToPython({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programs"),
      ),
      body: Center(
        child: HighlightView(
          pythoncode,
          language: pythoncode,
          theme: githubDarkDimmedTheme,
        ),
      ),
    );
  }
}