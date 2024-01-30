import 'package:flutter/material.dart';

class CodeX extends StatelessWidget {
  const CodeX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("CodeX"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 20, top: 30, bottom: 20),
                child: Text(
                  "Languages",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Color.fromARGB(255, 27, 105, 169),
                                width: 3),
                            image: DecorationImage(
                                image: AssetImage("images/java-14-logo.png"),
                                fit: BoxFit.cover),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // child: Image.asset("images/Python-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                                color: Color.fromARGB(255, 27, 105, 169),
                                width: 3),
                            image: DecorationImage(
                              image: AssetImage("images/Python-logo.png"),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // child: Image.asset("images/Dart-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Color.fromARGB(255, 27, 105, 169),
                                width: 3),
                            image: DecorationImage(
                                image: AssetImage("images/Dart-logo.png"),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // child: Image.asset("images/js-logo.png"),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("images/js-logo.png"),
                              fit: BoxFit.cover),
                          border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 50, bottom: 20),
                child: Text(
                  "Framework",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 27, 105, 169),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmRzxZYMOvjJGPm6m783qNcHhVrLYrsa0vtw&usqp=CAU"),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("images/spring-logo.png"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [BoxShadow(blurRadius: 2)],
                          border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("images/react-logo.png"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [BoxShadow(blurRadius: 2)],
                          border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("images/maria.png"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [BoxShadow(blurRadius: 2)],
                          border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 50, bottom: 20),
                child: Text(
                  "Database",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "images/mysql-img.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(
                             Radius.circular(30),
                            ),
                            border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3,
                            ),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage(
                              "images/mongodb.png",
                            )),
                            border: Border.all(
                             color: Color.fromARGB(255, 27, 105, 169),
                                width: 3),
                                  boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage(
                              "images/hibernate-logo.png",
                            )),
                         border: Border.all(
                           color: Color.fromARGB(255, 27, 105, 169),
                            width: 3),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs4CKqdBgjxCkkCXu4ZhoRWBEvbaDJpSPJSaw6gCH9Cdh1oS9WYdkJQIllU2EqomfqQng&usqp=CAU",
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 50, bottom: 20),
                child: Text(
                  "Tools",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("images/git-img.png")),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("images/github.png")),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("images/eclipse.png")),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                            color: Color.fromARGB(255, 27, 105, 169),
                            width: 3),
                            boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("images/vs-logo.png")),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                        color: Color.fromARGB(255, 27, 105, 169),
                        width: 3),
                        boxShadow: [BoxShadow(blurRadius: 2)]),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
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
