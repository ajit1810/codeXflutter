import 'package:flutter/material.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  int count=0;

  void reload(){
    setState(() {
      count++;
    });
  }

 Widget myName(){
  if(count>=1){
      return Text(
        "Ajit Mane",
      style: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w900
      ),
      );
  }
  return Container();
 }

 Widget myPic(){
  if(count>=2){
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.yellow,
                Colors.amber,
                Color.fromARGB(255, 255, 119, 0),
                Color.fromARGB(255, 244, 44, 13),
                Color.fromARGB(235, 233, 30, 98),
                Colors.purple,
                Colors.purple,
              ]),
              borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
          child: Container(
            height: 190,
            width: 190,
                  
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage("images/ajit.jpg"),
                    fit: BoxFit.cover)
                    ),
          ),
        ),
    );
  }
  return Container();
 }

 Widget myInfo(){
  if(count>=3){
    return Container(
      margin: EdgeInsets.only(left: 40,top: 10),
      child:Text(
        "Hello,MySelf Ajit Mane , I am from Rahimatpur.",
    style: TextStyle(
      fontSize: 20
    ),
      )
      );
  }
  return Container();
 }

  Widget languages() {
    if (count >= 4) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "Language : ",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }
 
Widget ImageCard(String image) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('$image')),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            const BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                color: Colors.black,
                offset: Offset(9, 9))
          ]),
    );
  }

  Widget languagesWidgets() {
    if (count >= 5) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageCard("images/java-14-logo.png"),
              ImageCard("images/Dart-logo.png"),
              ImageCard("images/Python-logo.png"),
              ImageCard("images/js-logo.png"),
            ],
          ),
        ),
      );
    }
    return Container();
  }
   
 Widget FrameWork() {
    if (count >= 6) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "FrameWorks : ",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget FrameWorkWidgets() {
    if (count >= 7) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageCard("images/flutter-logo.png"),
              ImageCard("images/react-logo.png"),
              ImageCard("images/spring-logo.png"),
              ImageCard("images/hibernate-logo.png"),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget Database() {
    if (count >= 8) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "Database : ",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget DatabaseWidgets() {
    if (count >= 9) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageCard("images/mysql-img.png"),
              ImageCard("images/mongodb.png"),
              ImageCard("images/oracle.png"),
              ImageCard("images/maria.png"),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget Tools() {
    if (count >= 10) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const Text(
          "Tools : ",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  Widget ToolsWidgets() {
    if (count >= 11) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageCard("images/git-img.png"),
              ImageCard("images/github.png"),
              ImageCard("images/vs-logo.png"),
              ImageCard("images/eclipse.png"),
            ],
          ),
        ),
      );
    }
    return Container();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PortFolio"),
      ),
      floatingActionButton: IconButton(onPressed: reload, icon: Icon(Icons.add)),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
        Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                myName(),
                Padding(padding: EdgeInsets.only(top: 30)),
                myPic(),
                myInfo(),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        languages(),
                        languagesWidgets(),
                        FrameWork(),
                        FrameWorkWidgets(),
                        Database(),
                        DatabaseWidgets(),
                        Tools(),
                        ToolsWidgets()
                      
                    ],
                  ),
                )
          ],
        ),
        )
        ]
      )
    );
  }
}