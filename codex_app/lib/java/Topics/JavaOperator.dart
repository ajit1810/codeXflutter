import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

// ignore: must_be_immutable
class JavaOperators extends StatelessWidget {
   JavaOperators({super.key});

  List OperatorsCodes = [

    '''
    class Demo {
      public static void main(String[]args){
        int a=10;
        int b=20;
        int c=a+b;
        System.out.println(c);
      }
    }
    ''',
    '''
      class Demo {
        public static void main(String[]args){
          int a=10;
          int b=20;
          int c=a*b;
          System.out.println(c);
        }
      }
      ''',
      '''
       class Demo {
        public static void main(String[]args){
          int a=10;
          int b=20;
          int c=a/b;
          System.out.println(c);
        }
      }
      ''',
      '''
       class Demo {
        public static void main(String[]args){
          int a=10;
          int b=20;
          int c=a%b;
          System.out.println(c);
        }
      }
      
    ''' ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operators"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
       child: ListView.builder(
        itemCount: OperatorsCodes.length,
        itemBuilder: (context, index) {
         return Container(
           child: Column(
             children: [
              Container(
                margin: EdgeInsets.all(10),
                 child: HighlightView(
                   "${OperatorsCodes[index]}",
                   languageId: "java",
                   theme: githubDarkDimmedTheme,
                 ),
               )
             ],
           ),
         );
       },
       ),
        ),
    );
  }
}