import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle(){
    return const TextStyle(
       color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold
      );
  }
  static TextStyle HeadlineTextFieldStyle(){
    return const TextStyle(
       color:Colors.black,fontSize: 26,fontWeight: FontWeight.bold
      );
  }
  static TextStyle LightTextFieldStyle(){
    return const TextStyle(
       color:Colors.black38,fontSize: 16,fontWeight: FontWeight.w500
      );
  }

  static TextStyle ownLightTextFieldStyle(){
    return const TextStyle(
       color:Colors.black38,fontSize: 13,fontWeight: FontWeight.w500
      );
  }


  static TextStyle SemiBoldTextFieldStyle(){
    return const TextStyle(
       color:Colors.black,fontSize: 17,fontWeight: FontWeight.bold
      );
  }
}