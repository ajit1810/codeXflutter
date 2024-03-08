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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 300,
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
                    margin: EdgeInsets.only(left: 50,top: 20),
                    child: Text('Please sign in to continue',
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
             Container(
              padding: EdgeInsets.only(left: 50,right: 50),
               child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Mobile no. or email',
                       hintStyle: GoogleFonts.anekTamil(fontSize: 15),
                      suffixIcon: Icon(Icons.close),
                      
                 ),
                ),
                 TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.anekTamil(fontSize: 15),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      counterText: 'Forgot password?'
                    ),
                ),
                ],
               ),
             ),
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(99, 113, 242, 1),
                  shape: StadiumBorder()),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  }, 
                  child:  Text('Login',
                  style: GoogleFonts.anekTamil(fontSize: 18),),
                  ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account? ',style: GoogleFonts.anekTamil(),),
                  Text('Sign up',style: GoogleFonts.anekTamil(color: Colors.red),)
                ],
              )
          ],
        ),
      ),
    );
  }
}