import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/signup.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController mailController = new TextEditingController();

  String email = '';

  final _formkey = GlobalKey<FormState>();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        'Password Email has been send !',
        style: TextStyle(fontSize: 18,color: Colors.white),
      )));
    } on FirebaseAuthException catch (e) {
      if (e.code== "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'No User found for that email',
          style: TextStyle(fontSize: 18,color: Colors.white),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 17, 17),
      body: Column(
        
        children: [
        
          Container(
            margin: EdgeInsets.only(top: 150),
            alignment: Alignment.center,
            child: const Text(
              'Password Reset',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          
          // Container(
          //   // margin: const EdgeInsets.only(top: 50),
          //   child: const Text(
          //     'Enter Your mail',
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 20,
                  
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
         
          Expanded(
            child: Form(
              key: _formkey,
                child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ListView(
                          
            children: [
              Container(
                
                padding: const EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  
                    border: Border.all(color: Colors.white38),
                    borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                  
                  controller: mailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter email';
                    }
                    return null;
                  },
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Colors.white, fontSize: 18),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white70,
                        size:25,
                      ),
                      border: InputBorder.none),
                ),
              ),
             
              GestureDetector(
                onTap: () {
                 


                if (_formkey.currentState!.validate()) {
                     debugPrint("print");
                    setState(() {
                      email = mailController.text;
                    });
                    resetPassword();
                // } else {
                //        showDialog(context: context,
                  
                //    builder: (context) => AlertDialog(
                    
                //     title: Text('Please Enter Email'),
                //     content: Text('press OK'),
                //      actions: [
                //         ElevatedButton(
                //            style: ButtonStyle(
                //             backgroundColor: WidgetStatePropertyAll(Colors.blue)
                //             ),
                //             onPressed: () {
                //               Navigator.pop(context);
                //             },
                //             child: Text("OK"))
                //       ],
                //    ),
                //    );
                }
                 
                  
                  
                },
                child: Container(
                  // width: 180,
                  margin: EdgeInsets.all(60),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Send Email',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don`t have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ));
                    },
                    child: const Text(
                      'Create',
                      style: TextStyle(
                          color: Color.fromARGB(225, 184, 166, 6),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
                        ),
                      )),
          ),
          
        ],
      ),
    );
  }
}
