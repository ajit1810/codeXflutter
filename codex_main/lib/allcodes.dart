import 'package:codex_main/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class AllCodes extends StatefulWidget {
  String? pagename ;
  Map CodeList;

   AllCodes({super.key, this.pagename,required this.CodeList});

  @override
  State<AllCodes> createState() => _AllCodesState(pagename,CodeList);
}

class _AllCodesState extends State<AllCodes> {
   String? pagename ;
  Map CodeList;
  _AllCodesState( this.pagename, this.CodeList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text('$pagename'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: CodeList["codes"].length,
          itemBuilder: (context, index) {
            return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20,bottom: 10),
                        child: Text("Program ${index + 1}")
                        )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: HighlightView(
                      "${CodeList["codes"][index]}",
                      languageId: "java",
                      theme: githubDarkDimmedTheme,
                    ),
                  )
                ],
            );
        },
        ),
      ),
      floatingActionButton: ElevatedButton(       
        onPressed: (){
          Navigator.push(
            context,
             MaterialPageRoute(builder: (context) => Quiz(questions: CodeList["quiz"]),));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 87, 215, 93)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
            )
        ),
       child: Text("start Quiz")
       ),
    );
  }
}