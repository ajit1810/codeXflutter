import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/loginpage.dart';
import 'package:portfolio_app/pages/contactPage.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      
    
    );
    
  }
}
