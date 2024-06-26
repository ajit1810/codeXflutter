import 'package:codex_app/Dart/Topics/Datatypes.dart';
import 'package:codex_app/Dart/Topics/IntroToDart.dart';
import 'package:codex_app/Dart/Topics/Operators.dart';
import 'package:codex_app/Dart/Topics/nullsafety.dart';
import 'package:flutter/material.dart';

class DartUI extends StatelessWidget {
  const DartUI({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                  Container(
                  margin: EdgeInsets.only(top: 20,left: 40,right: 40),
              padding: EdgeInsets.only(left: 50,top: 7),
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => IntroToDart(),));
                    },child: Text("Introducation to Dart",
                    style: TextStyle(
                      fontSize: 20
                    )
                    ),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 20,left: 40,right: 40),
                  padding: EdgeInsets.only(left: 90,top: 7),
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DartOperators(),));
                    },child: Text("Operators",
                    style: TextStyle(
                      fontSize: 20
                    )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 40,right: 40),
                  padding: EdgeInsets.only(left: 90,top: 7),
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DartDataTypes(),));
                    },child: Text("DataTypes",
                    style: TextStyle(
                      fontSize: 20
                    )
                    ),
                  ),
                ),

                 Container(
                  margin: EdgeInsets.only(top: 20,left: 40,right: 40),
                  padding: EdgeInsets.only(left: 90,top: 7),
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NullSafety(),));
                    },child: Text("Null Safety",
                    style: TextStyle(
                      fontSize: 20
                    )
                    ),
                  ),
                ) ,
                //  Container(
                //   margin: EdgeInsets.only(top: 20,left: 40,right: 40),
                //   padding: EdgeInsets.only(left: 90,top: 7),
                //   height: 40,
                //   width: 350,
                //   decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(15),
                //   color: Colors.grey,
                //   ),
                //   child: InkWell(
                //     onTap: () {
                //       Navigator.push(context, MaterialPageRoute(builder: (context) => DartDataTypes(),));
                //     },child: Text("Constructor",
                //     style: TextStyle(
                //       fontSize: 20
                //     )
                //     ),
                //   ),
                // ),     
              ],
            ),
          )
        ],
      ),
    );
  }
}