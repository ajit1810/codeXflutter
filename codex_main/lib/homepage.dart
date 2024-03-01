import 'package:carousel_slider/carousel_slider.dart';
import 'package:codex_main/codeslist/dartcodelist.dart';
import 'package:codex_main/codeslist/javacodelist.dart';
import 'package:codex_main/login.dart';
import 'package:codex_main/topicUI.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  String username;
  Homepage({super.key, required this.username});

  @override
  State<Homepage> createState() => _HomepageState(username);
}

class _HomepageState extends State<Homepage> {
  String username = '';
  _HomepageState(this.username);
  Widget language(String name) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        "$name",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget imageCard(String image) {
    return Container(
      // height: 150,
      margin: EdgeInsets.only(top: 30, bottom: 30),
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(blurRadius: 2, color: Colors.black, offset: Offset(9, 9))
        ],
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        //  border: Border.all(color: Colors.black)
      ),
    );
  }

  Widget languageImage() {
    return CarouselSlider(
        items: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TopicUI(pagename: 'java', CodeList: javacodes),
                  ));
            },
            child: imageCard("images/java-14-logo.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TopicUI(pagename: 'Dart', CodeList: dartcodes),
                  ));
            },
            child: imageCard("images/Dart-logo.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicUI(),
                  ));
            },
            child: imageCard("images/Python-logo.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicUI(),
                  ));
            },
            child: imageCard("images/js-logo.png"),
          ),
        ],
        options: CarouselOptions(
            autoPlay: true,
            height: 200,
            enlargeCenterPage: true,
            viewportFraction: 0.5,
            autoPlayAnimationDuration: Duration(seconds: 3)));
  }

  Widget frameworkImage() {
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/flutter-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/spring-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/react-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/hibernate-logo.png"),
        ),
      ],
      options: CarouselOptions(
          autoPlay: true,
          height: 200,
          viewportFraction: 0.5,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 3),
          reverse: true),
    );
  }

  Widget databaseImage() {
    return CarouselSlider(
        items: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicUI(),
                  ));
            },
            child: imageCard("images/mysql-img.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicUI(),
                  ));
            },
            child: imageCard("images/mongodb.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicUI(),
                  ));
            },
            child: imageCard("images/oracle.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicUI(),
                  ));
            },
            child: imageCard("images/maria.png"),
          ),
        ],
        options: CarouselOptions(
            autoPlay: true, 
            height: 200, 
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: Duration(seconds: 3),
          )
      );
  }

  Widget toolsImage() {
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/github.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/git-img.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/eclipse.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicUI(),
                ));
          },
          child: imageCard("images/vs-logo.png"),
        ),
      ],
      options: CarouselOptions(
          autoPlay: true,
          height: 200,
          viewportFraction: 0.5,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 3),
          reverse: true
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CodeX",
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900)),
          centerTitle: true,
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              language("Languages :"),
              languageImage(),
              language("Frameworks :"),
              frameworkImage(),
              language("Databases :"),
              databaseImage(),
              language("Tools :"),
              toolsImage()
            ]),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(username),
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Batch"),
              ),
              ListTile(
                title: Text("Logout"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("you want to Logout"),
                      content: Text("press ok to Logout"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Loginpage(),
                                  ));
                            },
                            child: Text("Logout"))
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
