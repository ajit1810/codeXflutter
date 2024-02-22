import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class NullSafety extends StatelessWidget {
   NullSafety({super.key});
  
  List nullsafetyCodes = [

    '''
      import"dart:io";  
      void main(){

	      //you can write also - int? a=null;
	      int? a;	

		    stdout.writeln(a);
      }
    ''',
    '''
      import"dart:io";
      void main(){

	      int? a=null;
	
		    if(a==null){
			    stdout.writeln("a is null");
		    }else{
			    stdout.writeln("code running successfully");
	      }
      }
    ''',
    '''
      import"dart:io";
      void main(){

	    String? a;

		    if(a==null){
			    stdout.writeln("a is null");
		    }else{
			    stdout.writeln("code run successfully");
	      }
      }
    ''',
    '''
      import"dart:io";
      void main(){

	      int? a=null;
	        a=10;
		      stdout.writeln(a);
      }
    ''',
    '''
      void PlayerInfo({int? jerNo, String? name}) {			//named arrgu
       print(jerNo);
       print(name);
      }

      void main() {
        PlayerInfo(name: "Virat", jerNo: 18);				//named parameter
        PlayerInfo(name: "MSD");
      }
    '''

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Null Safety"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: nullsafetyCodes.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 30),
                       child : Text("Program ${index+1}")
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10,right: 30,bottom: 10),
                    child: HighlightView(
                      "${nullsafetyCodes[index]}",
                      languageId: "dart",
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