import 'package:codex_app/java/javaUI.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class Datatypes extends StatelessWidget {
   Datatypes({super.key});

  List DatatypesCodes = [

    ''' 
    class Demo{
      public static void main(String[]args){
        int rollNo = 10 ;
	        System.out.println(a);
      }
    }
    ''',
    ''' 
    class Demo{
      public static void main(String[]args){
        int a = 'A' ;
	        System.out.println(a);
      }
    }
    ''',
    ''' 
    class Demo{
      public static void main(String[]args){
        char a = 'A' ;
	        System.out.println(a);
      }
    }
    ''',
    ''' 
    class Demo{
      public static void main(String[]args){
        String name = "Ajit" ;
	        System.out.println(name);
      }
    }
    ''',
    ''' 
    class Demo{
      public static void main(String[]args){
        float number= 100.0f;
	        System.out.println(number);
      }
    }
    ''',

    ''' 
    class Demo{
      public static void main(String[]args){
        double number= 2000.0;
	        System.out.println(number);
      }
    }
    ''',
    ''' 
    class Demo{
      public static void main(String[]args){
        int rollNo = 10 ;
	        System.out.println(a);
      }
    }
    ''',
    ''' 
    class Demo{
      public static void main(String[]args){
        int a = 'A' ;
	        System.out.println(a);
      }
    }
    '''

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datatypes"),
      ),
      body:Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: DatatypesCodes.length,
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
                      "${DatatypesCodes[index]}",
                      languageId: "java",
                      theme: githubDarkDimmedTheme,
                    ),
                  )
                ],
              ),
            );
        },),
      )
    );
  }
}