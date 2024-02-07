
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';


class IntroToJava extends StatelessWidget {
  String javacode = '''
  

    class Demo{
      public static void main(String[]args){
        System.out.println("Hello World");
      }
    }

  ''' ;
   IntroToJava({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Programs"),
      
      ),
      body: Center(
        child: HighlightView(
          javacode,
          language: javacode,
          theme: githubDarkDimmedTheme,
        ),
      ),
    );
  }
}