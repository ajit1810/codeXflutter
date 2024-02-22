import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class IntroToDart extends StatelessWidget {
   IntroToDart({super.key});

  List IntroducationCodes = [

    '''
        void main(){
          print("Hello From Dart");
        }
    ''',
    '''
        void main(){
          print("Hello From CodeX");
        }
    ''',

    '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    '''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introducation To Dart"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: IntroducationCodes.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 30,bottom: 10),
                        child: Text("Program ${index + 1}"),
                      )
                    ],
                  ),
                  HighlightView(
                     "${IntroducationCodes[index]}",
                     language: "dart",
                     theme: githubDarkDimmedTheme,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}