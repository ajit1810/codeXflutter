import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_app/routePage.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _timelineController = TextEditingController();
  final _emailController = TextEditingController();
  final _detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
         leading: IconButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => RoutePage(),));
          }, icon: Icon(Icons.arrow_back)),
        backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        title: const Text('Contact'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              'Cultivating Connections : Reach Out And Connect With Me',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _nameController,
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              debugPrint('failed');
                              return 'Please Enter Name';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              fillColor: const Color.fromRGBO(37, 37, 37, 1),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),

                              // labelText: 'Name',labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Name',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 199, 197, 197),
                                  fontSize: 13)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _numberController,
                          keyboardType: TextInputType.phone,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              debugPrint('failed');
                              return 'Please Enter Number';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              fillColor: const Color.fromRGBO(37, 37, 37, 1),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              // labelText: 'Phone Number',labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Number',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 199, 197, 197),
                                  fontSize: 13)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _timelineController,
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              debugPrint('failed');
                              return 'Please Enter Timeline';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              fillColor: const Color.fromRGBO(37, 37, 37, 1),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              // labelText: 'Timeline',labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Timeline',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 199, 197, 197),
                                  fontSize: 13)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              debugPrint('failed');
                              return 'Please Enter Email';
                            }
                            // Simple email validation
                            String pattern = r'^[^@]+@[^@]+\.[^@]+$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value)) {
                              return 'Enter a valid email address';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              fillColor: const Color.fromRGBO(37, 37, 37, 1),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              // labelText: 'Email',labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Email',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 199, 197, 197),
                                  fontSize: 13)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _detailsController,
                          minLines: 10,
                          maxLines: null,
                          maxLength: null,
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              debugPrint('failed');
                              return 'Please Enter Project Details';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              fillColor: const Color.fromRGBO(37, 37, 37, 1),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              // labelText: 'Project Details',labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Project Details',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 199, 197, 197),
                                  fontSize: 13)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onHover: (hovering) {
                              setState(() {
                                // This can be used to trigger any state change if needed
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.orangeAccent;
                                    }
                                    return Colors.grey; // Default color
                                  },
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                fixedSize:
                                    const MaterialStatePropertyAll(Size(200, 50)),
                                textStyle: const MaterialStatePropertyAll(TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Information submitted sucessfully')),
                                );
                                _nameController.clear();
                                _numberController.clear();
                                _timelineController.clear();
                                _emailController.clear();
                                _detailsController.clear();
                              }
                            },
                            child: const Text('Submit'))
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
