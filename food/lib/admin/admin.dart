import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food/admin/homeAdmin.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController usernamecontroller =  TextEditingController();
  TextEditingController userpasswordcontroller =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFededeb),
      body: Stack(
        
        children: [
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/2,),
            padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
               colors: [
                Color.fromARGB(255, 53, 53, 51),Colors.black
               ],
               begin: Alignment.topLeft,end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(
                    MediaQuery.of(context).size.width, 110
                    )
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30,top: 0,right: 30,),
            child: Form(
              key: _formKey,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Let`s Start with Admin', 
                  style:TextStyle(
                    fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                  ) ,
                  ),
                  const SizedBox(height: 18,),
                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: MediaQuery.of(context).size.height/2.2,
                      decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20,top: 0,right: 20),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 20,vertical: 0
                            ),
                            decoration: BoxDecoration(
                             border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 160, 160, 147)),
                              borderRadius: BorderRadius.circular(10)
                            ),
            
                            child: Center(
                              child: TextFormField(
                                controller: usernamecontroller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Username';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'username',
                                     hintStyle: TextStyle(
                                          color: Color.fromARGB(255, 220, 220, 220)
                                      )
                                  ),
                              ),
                            ),
                          ),
                           Container(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: .0, right: 20),
                              margin: const EdgeInsets.symmetric(horizontal: 20.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 160, 160, 147)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: TextFormField(
                                  controller: userpasswordcontroller,
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Password';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 160, 160, 147))),
                                ),
                              ),
                            ),
            
                            GestureDetector(
                              onTap: () {
                                loginAdmin();
                              },
                              child: Container(
                                 padding: const EdgeInsets.symmetric(vertical: 12.0),
                                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                                  width: MediaQuery.of(context).size.width,
                                   decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                       child: const Center(
                                    child: Text(
                                      "LogIn",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                              ),
                            )
            
                        ],
                      ),
                    ),
                  )
                ],
              )
              ),
          )
        ],
      ),
    );
  }


   loginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['id'] != usernamecontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Your name is not correct",
                style: TextStyle(fontSize: 18.0),
              )));
        } else if (result.data()['password'] !=
            userpasswordcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Your password is not correct",
                style: TextStyle(fontSize: 18.0),
              )));
        } else {
          
          Route route = MaterialPageRoute(builder: (context) => const HomeAdmin());
          Navigator.pushReplacement(context, route);
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                "Login SucessFully",
                style: TextStyle(fontSize: 18.0),
              )));
        }
      });
    });
  }

}