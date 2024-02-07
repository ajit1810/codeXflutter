// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class IntroToDart extends StatelessWidget {
  String dartcode = '''

  void main(){
    print("Hello World");
  }

''' ;
   IntroToDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programs"),
      ),
      body: Center(
        child: HighlightView(
          dartcode,
          language: dartcode,
          theme: githubDarkDimmedTheme,
        ),
      ),
    );
  }
}