import 'package:codex_ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

//for validation syntax
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override

  

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
             padding: EdgeInsets.only(bottom: 10),
              height:300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(44, 55, 149, 0.67),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(157.5))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text('Welcome',
                    style: GoogleFonts.jost(
                       color: Colors.white,
                      fontSize: 45),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50,top: 10),
                    child: Text('Please sign in to continue',
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
             Container(
              padding: EdgeInsets.only(left: 50,right: 50),
               child: Form(
                key: _formKey,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                            return "please enter your username";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Mobile no. or email',
                         hintStyle: GoogleFonts.anekTamil(fontSize: 15),
                        suffixIcon: Icon(Icons.close),
                        labelText: "username"
                   ),
                  ),
                  SizedBox(
                    height:10,
                  ),
                   TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter your password';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.anekTamil(fontSize: 15),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        counterText: 'Forgot password?',
                        labelText: "Password"
                      ),
                  ),
                  ],
                 ),
               ),
             ),
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(99, 113, 242, 1),
                  shape: StadiumBorder()),
                  onPressed: (){
                    bool loginValidator = _formKey.currentState!.validate();
                      if (loginValidator) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Login Sucessfully")
                            )
                         );
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login Failed")
                          )
                        );
                      }
                  }, 
                  child:  Text('Login',
                  style: GoogleFonts.poppins(fontSize: 18,color: Colors.white),),
                  ),
              ),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account? ',style: GoogleFonts.anekTamil(),),
                    Text('Sign up',style: GoogleFonts.anekTamil(color: Colors.red),)
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}