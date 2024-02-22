import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class Inheritance extends StatelessWidget {
   Inheritance({super.key});

  List inheritanceCodes = [

    '''
    //parent class
    class Unix {					 

	    void color(){
		    System.out.print("Black ");
	    }			
    }

    //child class
    class Windows extends Unix{			
	
	    void ui(){
		    System.out.println("white");	
	    }
    }

class Demo{

	public static void main(String[]args){
	Windows w = new Windows();
	w.ui();
	w.color();
	}
}

''',
'''
//parent class 
  class One{						
	  int i=10;
	  void show(){
		  System.out.println("parent class "+i);
	  }
  }

  //child class
  class Two extends One{					
	  int i=20;
	  void display(){
		  System.out.println("child class "+i);
	  }
  }

  class Demo{
	  public static void main(String[]args){
	  Two t = new Two();
	  t.show();
	}
}
 '''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inheritance"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: inheritanceCodes.length,
          itemBuilder:(context, index) {
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
                  "${inheritanceCodes[index]}"
                  ,languageId: "java",
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