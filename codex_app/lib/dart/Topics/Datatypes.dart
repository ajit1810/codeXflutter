import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class DartDataTypes extends StatelessWidget {
   DartDataTypes({super.key});

  List Datatypes = [

    '''
      void main(){
        int number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        int number = 10;
            number=20;
        print(number);
      }
    ''',
    '''
      void main(){
        num number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        String name = 'ajit';
        print(name);
      }
    ''',

    '''

      void main(){
        double salary = 10000;
        print(salary);
      }
    ''',
    '''
      void main(){
        int number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        int number = 10;
            number=20;
        print(number);
      }
    ''',
    '''
      void main(){
        num number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        String name = 'ajit';
        print(name);
      }
    ''',

    '''

      void main(){
        double salary = 10000;
        print(salary);
      }
    '''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTypes"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Datatypes.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 20,bottom: 10),
                        child: Text("Program ${index + 1}"),
                      )
                    ],
                  ),
                  HighlightView(
                    "${Datatypes[index]}",
                    languageId: "dart",
                    theme: githubDarkDimmedTheme,
                  ),
                ],
              ),
            );
          },),
      ),
    );
  }
}