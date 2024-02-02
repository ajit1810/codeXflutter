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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        child: Text("Languages",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                Container(
                  child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: [
                    Container(
                      child: Column(
                      children: [
                      SizedBox(
                        height: 20,
                      ),
                            Container(
                              margin: EdgeInsets.only(left: 30,top: 10),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                 image: DecorationImage(image: AssetImage("images/java-14-logo.png"),
                                 fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10,left:25),
                              child: Text("Java",style: TextStyle(
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                 image: DecorationImage(image: AssetImage("images/Python-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 9),
                              child: Text("Python",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/Dart-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Dart",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30,right: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/js-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("JS",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),   
                    ],
                  ),                
                ),
              ),
               Container(
                margin: EdgeInsets.only(left: 20,top: 30),
                        child: Text("Frameworks",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                        ),
                        ),
                      ),
                      Container(
                         child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                         children: [
                           Container(
                            child: Column(
                            children: [
                              SizedBox(
                               height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30,top: 10),
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("images/flutter-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left:30,top: 10 ),
                              child: Text("Flutter",style: TextStyle(
                              color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/spring-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 9),
                              child: Text("Spring",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/react-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("React",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30,right: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/hibernate-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Hibernate",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),                    
                    ],
                  ),
                ),
              ),
              Container(
                        margin: EdgeInsets.only(left: 20,top: 30),
                        child: Text("Database",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                        ),),
                      ),
               Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                      SizedBox(
                        height: 20,
                      ),
                            Container(
                              margin: EdgeInsets.only(left: 30,top: 10),
                              height: 90,
                              width: 90,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/mysql-img.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20 , top: 10),
                              child: Text("MySQL",style: TextStyle(
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/mongodb.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("MongoDB",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/oracle.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Oracle",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30,right: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/maria.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("MariaDB",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),                      
                    ],
                  ),           
                ),
              ),
               Container(
                        margin: EdgeInsets.only(left: 20,top: 30),
                        child: Text("Tools",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                        ),),
                      ),
               Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                          SizedBox(
                            height: 20,
                      ),
                            Container(
                              margin: EdgeInsets.only(left: 30,top: 10),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/git-img.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20,top: 10),
                              child: Text("Git",style: TextStyle(
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/github.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("GitHub",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/eclipse.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Eclipse",style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/vs-logo.png"),
                                 fit: BoxFit.cover
                                 )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10,top: 10),
                              child: Text("vs code",style: TextStyle(
                                color: Colors.white,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Container(
                        margin: EdgeInsets.only(left: 30,top: 30,right: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                 color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/postman.png"),
                                 fit: BoxFit.cover
                                 )          
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10,top: 10),
                              child: Text("Postman",style: TextStyle(
                                color: Colors.white,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
