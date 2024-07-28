import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/bottomNav.dart';
import 'package:food/pages/forgotPassword.dart';
import 'package:food/pages/signup.dart';
import 'package:food/widget/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '', password = '';

   final _formkey = GlobalKey<FormState>();

  TextEditingController userEmailController = new TextEditingController();
  TextEditingController userPasswordController = new TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
            ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
          backgroundColor: Colors.green,
            content: Text(
          'Login Sucessfully',
          style: TextStyle(fontSize: 20),
        ))));
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  BottomNav(),));
    } on FirebaseAuthException catch (e) {
      debugPrint("password wrong");
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
             backgroundColor: Colors.red,
            content: Text(
          'Wrong Password Provided By User',
          style: TextStyle(fontSize: 18, color: Colors.black),
        )));
      
      if (e.code== 'user-not-found') {
       
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
           backgroundColor: Colors.grey,
            content: Text(
          'No User Found for that Email !',
          style: TextStyle(fontSize: 18, color: Colors.black),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xFFff5c30),
                  Color(0xFFe74b1a),
                ])),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)),
            ),
            child: const Text(''),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Image.asset(
                        'images/logo (1).png',
                        width: MediaQuery.of(context).size.width / 1.5,
                      ),
                    ),
                  ),
                 
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           
                            Text(
                              'Login',
                              style: AppWidget.HeadlineTextFieldStyle(),
                            ),
                            
                            TextFormField(
                              controller: userEmailController,
                              validator: (value) {
                                if (value==null || value.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                 return null;
                              },
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                  prefixIcon: const Icon(Icons.email_outlined)),
                            ),
                            
                            TextFormField(
                              controller: userPasswordController,
                                validator: (value) {
                                if (value==null || value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                  prefixIcon: const Icon(Icons.padding_outlined)),
                            ),
                            
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ));
                              },
                              child: Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Forget Password',
                                  style: AppWidget.SemiBoldTextFieldStyle(),
                                ),
                              ),
                            ),
                            
                            GestureDetector(
                               onTap: () async{
                                  if (_formkey.currentState!.validate()) {
                                    setState(() {
                                      email=userEmailController.text;
                                      password=userPasswordController.text;
                                    });
                                  }
                                  userLogin();
                                },
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFff5c30),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        )),
                    child: Text(
                      'Don`t have an account? Sign up',
                      style: AppWidget.SemiBoldTextFieldStyle(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
