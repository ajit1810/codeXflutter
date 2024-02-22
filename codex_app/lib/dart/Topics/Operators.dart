import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class DartOperators extends StatelessWidget {
   DartOperators({super.key});

   List OperatorsCodes = [

        '''
        void main(){
        	int a =10;
	        int b =20;
	        int c =a+b;
	        print(c);
        }
        ''',
        '''
        void main(){
	        int a =10;
	        int b =5;
        	double c =a/b;
        	print(c);
        }
        ''',
        '''
        void main(){
	        int a =10;
	        int b =5;
	        int c =a*b;
	        print(c);
        }
        ''',
        '''
        void main(){
	        int a =20;
	        int b =5;
	        int c =a-b;
	        print(c);
        }
        ''',
         '''
        void main(){
	        int a =10;
	        int b =5;
        	double c =a/b;
        	print(c);
        }
        ''',
         '''
        void main(){
	        int a =10;
	        int b =5;
        	double c =a/b;
        	print(c);
        }
        ''',
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operators"),
      ),
      body: Container(   
        // margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: OperatorsCodes.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                     Container(
                      margin: EdgeInsets.only(left: 30,top: 20,bottom: 10),
                      child :Text("Program ${index+1}")
                     )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30,bottom: 10),
                    child: HighlightView(
                      "${OperatorsCodes[index]}",
                      languageId: "dart",
                      theme: githubDarkDimmedTheme,
                    )
                  )
                ],
              ),
            );
        },),
      ),
    );
  }
}