import 'dart:js';

import 'package:flutter/material.dart';
import 'package:practical9/screen2.dart';

class FormFill extends StatelessWidget {
  String name = '';
  String username = ''; 
  String Password= ''; 

  FormFill({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormFill"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("username"),
                hintText: "username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: const Color.fromARGB(255, 196, 189, 189),
              ),
              onChanged: (value) {
                name = value;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
               obscureText: true,
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Password",
                counter: Text("Forget password"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: const Color.fromARGB(255, 196, 189, 189),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen2(name: name),
                        )
                      );
                      
                },
                child: Text("Login")),
          )
        ],
      ),
    );
  }
}
