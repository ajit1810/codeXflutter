import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class Constructor extends StatelessWidget {
  Constructor({super.key});

  List ConstructorCodes = [
    '''
      class Demo{
	      int rollNo;
	      Demo(){
	        System.out.println("Constructor Called");
	        rollNo=10;	
	      }
	      public static void main(String[]args){
	        Demo d = new Demo();
		      System.out.println(d.rollNo);
	      }
      }
    ''',
    '''
       class Demo{
	        String name;
	        Demo(String name){
	        //this.name=name;
	          System.out.println("Constructor called "+name);
	        }
	        public static void main(String[]args){
	        Demo d = new Demo("Ajit");
	          System.out.println("main");
	          System.out.println(d.name);			
	        }
        }
    ''',
    '''
      class Demo{
      	int rollNo;
	      Demo(int rollNo){
	        this.rollNo=rollNo;
	      }
	      public static void main(String[]args){
	      Demo d = new Demo(18);
		      System.out.println(d.rollNo);
	      }
      }
    ''',
    '''

      class Demo{
	      char a;
	        //parametrise constr.
	        Demo(char a){
		        System.out.println("With para Constructor "+a);
	      }
	        //normal constr.
	      Demo(){
		        System.out.println("Without para Constructor "+a);	
	      }
	      public static void main(String[]args){
	      Demo d = new Demo('A');
		        System.out.println("main");
	      }
      }

'''

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constructor"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: ConstructorCodes.length,
          itemBuilder: 
          (context, index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 10),
                        child: Text("Program ${index +1}")                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: HighlightView(
                      "${ConstructorCodes[index]}",
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
