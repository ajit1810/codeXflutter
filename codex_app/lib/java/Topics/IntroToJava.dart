import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

// ignore: must_be_immutable
class IntroTojava extends StatelessWidget {
   IntroTojava({super.key});
  
  List IntroductionCodes = [
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''

      class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
  
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    '''
  ];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction to java"),
      ),
      body: Container(
        margin: EdgeInsets.only(top:10),
       child: ListView.builder(
        itemCount: IntroductionCodes.length,
        itemBuilder: (context, index) {
         return Container(
           child: Column(
             children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10),
                    child: Text("Program ${index +1}")
                    )
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                 child: HighlightView(
                   "${IntroductionCodes[index]}",
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