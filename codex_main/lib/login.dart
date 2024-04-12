import 'package:codex_main/homepage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
   Loginpage({super.key});


  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {


  
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  String username = '';
  String password = '';

  Future check(){
    return showDialog(
      context: context,
       builder: (ctx) => AlertDialog(
        title: Text("Invalid username or wrong password"),
        content: Text("press ok to retry"),
        actions:<Widget> [
          ElevatedButton(onPressed: (){
            Navigator.of(ctx).pop();
          }, child: Text("ok")
          )
        ],
       ),
       );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage("images/login-image.png"),
           fit: BoxFit.cover,
           opacity: 100
            )
        ),
        child: SafeArea(
          child: Center(
            child: ListView(
              children: [
                Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100,bottom: 20),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey,
                          image: DecorationImage(image: AssetImage("images/logoX.jpeg"),
                          fit: BoxFit.cover)
                        ),
                  ),
                  Text("Welcome To CodeX",
                  style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10,right: 30,bottom: 10),
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
                        ),
                      ),
                      onChanged: (value) {
                        username = value; 
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10,right: 30,),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                       onChanged: (value) {
                        password = value; 
                      },
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
                    height: 40,
                    width: 180,
                   
                    child: ElevatedButton(
                      onPressed: (){
                      if (username == "1" &&
                      password == "1" ) {
                       ScaffoldMessenger.of(context).showSnackBar(
                      
                        SnackBar(content: Text('Login Sucessfully',
                       style: TextStyle(
                          fontSize: 18,
                          
                        ),)));
                         Navigator.pushReplacement(
                        context,
                         MaterialPageRoute(
                          builder: (context) => Homepage(username: username),
                      )
                      );
                      } else {
                        check();
                      }

                      // ? Navigator.pushReplacement(
                      //   context,
                      //    MaterialPageRoute(
                      //     builder: (context) => Homepage(username: username),
                      // )
                      // )
                      // : check(); 
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
                            // color: Colors.grey.shade500,
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
                            // color: Colors.grey
                          ),
                        )
                      ],
                    )
                ],
              ),
            ]),
          )
          ),
      ),
    );
  }
}