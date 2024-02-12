import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

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
        margin: EdgeInsets.all(10),
       child: ListView.builder(
        itemCount: IntroductionCodes.length,
        itemBuilder: (context, index) {
         return Container(
           child: Column(
             children: [
              Container(
                margin: EdgeInsets.all(10),
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