// import 'package:codex_app/JavaScript/js.dart';
// import 'package:codex_app/java/javaSyllabus.dart';
// import 'package:codex_app/python/python.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:codex_app/Dart/DartUI.dart';
import 'package:codex_app/java/javaUI.dart';
import 'package:flutter/material.dart';

class CodeX extends StatelessWidget {
  const CodeX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      appBar: AppBar(
        title: const Text("CodeX"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  "Languages",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: CarouselSlider(
                    items: [
                      Column(
                        children: [
                          // const SizedBox(
                          //   height: 20,
                          // ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JavaUI(),
                                    ));
                              },
                            ),
                            // margin: const EdgeInsets.only(left: 30, top: 10),
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.black,
                                    offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/java-14-logo.png"),
                                  fit: BoxFit.cover),
                              //  border: Border.all(color: Colors.black)
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 10),
                            child: const Text("Java"),
                          )
                        ],
                      ),
                      Container(
                        // margin: const EdgeInsets.only(left: 30, top: 30),
                        child: Column(
                          children: [
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DartUI(),
                                      ));
                                },
                              ),
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 2, offset: Offset(9, 9))
                                  ],
                                  image: const DecorationImage(
                                      image: AssetImage("images/Dart-logo.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                "Dart",
                                style: TextStyle(),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.only(left: 30, top: 30),
                        child: Column(
                          children: [
                            Container(
                              // child: InkWell(
                              //   onTap: () {
                              //     Navigator.push(context, MaterialPageRoute(builder: (context) => Python_Syllabus(),));
                              //   },
                              // ),
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        // spreadRadius: 1,
                                        offset: Offset(9, 9))
                                  ],
                                  image: const DecorationImage(
                                      image: AssetImage("images/Python-logo.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                "Python",
                                style: TextStyle(),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        // margin:  const EdgeInsets.only(left: 30, top: 30, right: 30),
                        child: Column(
                          children: [
                            Container(
                              //  child: InkWell(
                              //   onTap: () {
                              //     Navigator.push(context, MaterialPageRoute(builder: (context) => JavaScript(),));
                              //   },
                              //  ),
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 2, offset: Offset(9, 9))
                                  ],
                                  image: const DecorationImage(
                                      image: AssetImage("images/js-logo.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text("JS"),
                            ),
                          ],
                        ),
                      ),
                    ],
                    options:
                        CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 1.9,
                         viewportFraction: 0.5
                        )
                      ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30),
                child: const Text(
                  "Frameworks",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: CarouselSlider(
                  items: [
                  Container(
                    child: Column(
                      children: [
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        Container(
                          // margin: const EdgeInsets.only(left: 30, top: 10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image:
                                      AssetImage("images/flutter-logo.png"),
                                  fit: BoxFit.cover)),
                          // child: InkWell(
                          //   onTap: () {
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterUI(),));
                          //   },
                          // ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("Flutter"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/spring-logo.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text("Spring"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/react-logo.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("React"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2, 
                                  offset: Offset(9, 9)
                                  )
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/hibernate-logo.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("Hibernate"),
                        ),
                      ],
                    ),
                  ),
                ],
                 options: CarouselOptions(
                  autoPlay: true, 
                  aspectRatio: 1.9,
                  viewportFraction: 0.5,
                             
                    )
                  ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30),
                child: const Text(
                  "Database",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: CarouselSlider(items: [
                  Column(
                    children: [
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Container(
                        // margin: const EdgeInsets.only(left: 30, top: 10),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  offset: Offset(9, 9))
                            ],
                            image: const DecorationImage(
                                image: AssetImage("images/mysql-img.png"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15, top: 20),
                        child: const Text("MySQL"),
                      )
                    ],
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/mongodb.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("MongoDB"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/oracle.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("Oracle"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin:   const EdgeInsets.only(left: 30, top: 30, right: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/maria.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("MariaDB"),
                        ),
                      ],
                    ),
                  ),
                ], options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.9,
                  viewportFraction: 0.5
                )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 30),
                child: const Text(
                  "Tools",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: CarouselSlider(items: [
                  Column(
                    children: [
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Container(
                        // margin: const EdgeInsets.only(left: 30, top: 10),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2, offset: Offset(9, 9))
                            ],
                            image: const DecorationImage(
                                image: AssetImage("images/git-img.png"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 0, top: 20),
                        child: const Text("Git"),
                      )
                    ],
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/github.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("GitHub"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/eclipse.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("Eclipse"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/vs-logo.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("vs code"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // margin:const EdgeInsets.only(left: 30, top: 30, right: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, offset: Offset(9, 9))
                              ],
                              image: const DecorationImage(
                                  image: AssetImage("images/postman.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: const Text("Postman"),
                        ),
                      ],
                    ),
                  ),
                ], 
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.9,
                  viewportFraction: 0.5,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: Duration(seconds: 3),
                  initialPage: 0,
                  pageSnapping: true,
                  
                )),
              ),
              Container(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
