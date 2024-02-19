import 'package:codex_app/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[500],
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100,bottom: 10),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("images/logoX.jpeg"),
                        fit: BoxFit.cover)
                      ),
                ),
                Text("Welcome To CodeX"),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 30,top: 20,right: 30,bottom: 10),
                  child: TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400
                        )
                      ),
                      fillColor:  Colors.grey.shade200,
                      filled: true,
                      hintText: "username",
                      hintStyle: TextStyle(
                        color: Colors.black
                      )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,top: 10,right: 30,),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400
                        )
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Password ",
                      hintStyle: TextStyle(
                        color: Colors.black
                      )
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  
                    Container(
                      margin: EdgeInsets.only(top: 5,right: 30,bottom: 10),
                      child: Text("forgot password")
                      ),
                  ],
                ),
                Container(
                  width: 180,
                 
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CodeX(),));
                  }, 
                  child: Text(
                    "Login",   
                      style: TextStyle(fontSize: 20,),
                      
                      )
                    ),
                ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("OR"),
                  SizedBox(
                      height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80,right: 30),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade500,
                          image: DecorationImage(image: AssetImage("images/google.png"),
                          fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(image: 
                          AssetImage("images/apple.png"),
                          fit: BoxFit.cover
                          ),
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
              ],
            ),
          ]),
        )
        ),
    );
  }
}