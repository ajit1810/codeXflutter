import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:portfolio_app/routePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
     backgroundColor: Colors.transparent,
    ),
    body: Container(
      child:  Stack(
        alignment: Alignment.center,
        children: [
          Container(
             width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.only(top: 0),
            child: ShaderMask(
              shaderCallback: (rect){
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors:[Colors.black,Colors.transparent] ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              
              child: Image.asset('images/myImage.png',height: 600,fit: BoxFit.contain,)),
          ),
          Container(
            alignment: Alignment.center,
           
            margin: EdgeInsets.only(top:MediaQuery.of(context)
            .size.height*0.63
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
        
                const Text('Hello I am ' ,style: TextStyle(
                  color: Colors.white,fontSize: 20
                ),),
                 const SizedBox(
                  height: 20,
                ),
                const Text("Ajit Mane" ,style: TextStyle(
                  color: Colors.white,letterSpacing: 3,
                  fontSize: 40,fontWeight: FontWeight.bold
                ),),
                const SizedBox(
                  height: 20,
                ),
                const Text("Software Developer",style: TextStyle(
                  color: Colors.white,fontSize: 24
                )),
                 const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 40,
                  width: 120,
                  child: TextButton(
                    onHover: (hovering) {
        setState(() {
          // This can be used to trigger any state change if needed
        });
      },
       style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return  Colors.orangeAccent;

            }
            return Colors.grey; // Default color
          },
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
                   
                    onPressed: (){
                      Get.to(()=>const RoutePage(),
                      transition: Transition.downToUp,
                      duration: const Duration(seconds: 3),
                      );
                    }, 
                    child: const Text("Hire Me",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    //  style: TextButton.styleFrom(
                    //   backgroundColor: Colors.white,primary: Colors.black
                    // )
                    ),
                ),
                const SizedBox(
                  height: 20,
                ),
               
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}