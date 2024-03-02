import 'package:flutter/material.dart';

class Form_Validator extends StatefulWidget {
  const Form_Validator({super.key});

  @override
  State<Form_Validator> createState() => _Form_ValidatorState();
}

class _Form_ValidatorState extends State<Form_Validator> {

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();


//for validation syntax
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

String name = '';

@override
  void initState() {
    // TODO: implement initState
    print("initstate method called");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build called $name");
    return Scaffold(
      appBar: AppBar(
         title: Text("Form Validator $name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(90),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('username'),
                        
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your username";
                        }else{
                          return null;
                        }
                      },            
              ),
              SizedBox(height: 10,
              ),
              TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        label: Text("Password"),
                        
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter password";
                        }else{
                          return null;
                        }
                      },            
              ),
              SizedBox(height: 10,
              ),
              ElevatedButton(
                onPressed: (){
                  // debugPrint("password : ${usernameController.text}");
                  // debugPrint("password : ${passwordController.text}");
                  bool loginValidator = _formKey.currentState!.validate();
                    if (loginValidator) {
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
                 child: Text("save"))
            ],
          ),
        ),
      )
    );
  }
}