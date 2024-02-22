import 'package:codex_app/java/Topics/Constructor.dart';
import 'package:codex_app/java/Topics/Datatypes.dart';
import 'package:codex_app/java/Topics/Inheritance.dart';
import 'package:codex_app/java/Topics/IntroTojava.dart';
import 'package:codex_app/java/Topics/JavaOperator.dart';
import 'package:flutter/material.dart';

class JavaUI extends StatelessWidget {
  const JavaUI({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("java"),
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: [
              Container(   
               margin: EdgeInsets.only(left: 30,top: 20,right: 30),
              padding: EdgeInsets.only(left: 65,top: 8),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IntroTojava(),));
                  },child: Text("Introduction to java",style: TextStyle(
                    fontSize: 20
                  )),
                ),
              ),
              Container(   
               margin: EdgeInsets.only(left: 30,top: 20,right: 30),
              padding: EdgeInsets.only(left: 105,top: 8),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JavaOperators(),));
                  },child: Text("Operators",style: TextStyle(
                    fontSize: 20
                  )),
                ),
              ),
              Container(
               margin: EdgeInsets.only(left: 30,top: 20,right: 30),
              padding: EdgeInsets.only(left: 105,top: 8),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Datatypes(),));
                  },child: Text("Datatypes" , style: TextStyle(
                    fontSize: 20
                  )
                  ),
                ),
              ),
              Container(   
               margin: EdgeInsets.only(left: 30,top: 20,right: 30),
              padding: EdgeInsets.only(left: 105,top: 8),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Constructor(),));
                  },child: Text("Constructor",style: TextStyle(
                    fontSize: 20
                  )),
                ),
              ),
                            Container(   
               margin: EdgeInsets.only(left: 30,top: 20,right: 30),
              padding: EdgeInsets.only(left:105,top: 8),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Inheritance(),));
                  },child: Text("Inheritance",style: TextStyle(
                    fontSize: 20
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
