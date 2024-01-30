import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Instagram",style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.deepOrange,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 209, 54, 54),width: 3 ),
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("images/profile.jpg"))
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0, top: 8),
                              child: Text("your story",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 209, 54, 54),width: 3 ),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/karan.png"))
                                  ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0, top: 8),
                              child: Text("karan",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 209, 54, 54),width: 3 ),
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("images/sushant.jpg"))
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0, top: 8),
                              child: Text(
                                "sushant",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 209, 54, 54),width: 3 ),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/rutik.png"))
                                  ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0, top: 8),
                              child: Text(
                                "rutik",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 209, 54, 54),width: 3 ),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("images/rohan.png"))
                                  ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0, top: 8),
                              child: Text(
                                "rohan",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 209, 54, 54),width: 3 ),
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage("images/swapnil.png"))
                                ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 0, top: 8),
                            child: Text(
                              "swapnil",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [     
                  Container(
                    margin: EdgeInsets.only(left: 10,top: 0),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        image: DecorationImage(
                          image: AssetImage("images/profile.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8, top: 0),
                    child: Text(
                      "ajit___18 with 2 others",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 8, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 350,
                              width: 340,
                              child: Image.asset(
                                "images/post17.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 360),
                              height: 350,
                              width: 340,
                              child: Image.asset(
                                "images/post18.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 720),
                              height: 350,
                              width: 340,
                              child: Image.asset(
                                "images/post19.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_sharp,
                        color: Colors.red,
                      )
                      ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                      )
                      ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send_rounded),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_outline_sharp),
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "143 likes",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 22, top: 6),
                child: Text(
                  "ajit___18 #YCIS Satara 💖🔥 ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("images/profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Color.fromARGB(255, 223, 52, 40)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "ajit___18",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ))
                ],
               )
              ),
              Container(
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 8),
                      height: 350,
                      width: 340,
                      decoration: BoxDecoration(color: Colors.white,
                      image: DecorationImage(image: AssetImage("images/post11.jpg"),
                        fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 8,right: 10),
                      height: 350,
                      width: 340,
                      decoration: BoxDecoration(color: Colors.white,
                      image: DecorationImage(image: AssetImage("images/post12.jpg"),
                        fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ],
                ),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_sharp),color: Colors.red, ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined),color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send_rounded),color: Colors.white,),
                  SizedBox(
                    width: 150,
                  ),
                   IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_sharp),color: Colors.white,),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("183 likes",style: TextStyle(color: Colors.white),),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("ajit___18 #Rahimatpur😍🥵☮️",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("images/profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Color.fromARGB(255, 223, 52, 40)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "ajit___18",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ))
                ],
               )
              ),
              Container(
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 8),
                      height: 350,
                      width: 340,
                      decoration: BoxDecoration(color: Colors.white,
                      image: DecorationImage(image: AssetImage("images/post5.jpg"),
                        fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ],
                ),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_sharp),color: Colors.red, ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined),color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send_rounded),color: Colors.white,),
                  SizedBox(
                    width: 150,
                  ),
                   IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_sharp),color: Colors.white,),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("143 likes",style: TextStyle(color: Colors.white),),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("ajit___18 #Travelling👻👀💞",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("images/profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Color.fromARGB(255, 223, 52, 40)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "ajit___18",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ))
                ],
               )
              ),
              Container(
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 8),
                      height: 350,
                      width: 340,
                      decoration: BoxDecoration(color: Colors.white,
                      image: DecorationImage(image: AssetImage("images/post50.jpg"),
                        fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ],
                ),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_sharp),color: Colors.red, ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined),color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send_rounded),color: Colors.white,),
                  SizedBox(
                    width: 150,
                  ),
                   IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_sharp),color: Colors.white,),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("170 likes",style: TextStyle(color: Colors.white),),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("ajit___18 #Rahimatpur🎭_🎯",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: "calls"
      //       )
      //   ]
      //    )
    );
  }
}
