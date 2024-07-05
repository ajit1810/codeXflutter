import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/List/projectList.dart';
import 'package:portfolio_app/pages/details.dart';
import 'package:portfolio_app/routePage.dart';


class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    print(myProjectsList.runtimeType);
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => RoutePage(),));
          }, icon: Icon(Icons.arrow_back)),
        // centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        title: const Text("Projects",style: TextStyle(letterSpacing: 2),),
      ),
      body: ListView.builder(
        itemCount: myProjectsList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 220,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              color: const Color(0xff262628),
              elevation: 2,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Colors.white,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${myProjectsList[index]['langName']}',
                      style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 85,
                      child: Text(
                        'Name :- ${myProjectsList[index]['projectName']}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 120,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.grey),
                            ),
                            onPressed: () {
                              Get.to(
                                () => Details(
                                  projects: myProjectsList[index],
                                ), // list ptvychi ahe details file la for info of projects
                                duration: const Duration(seconds: 1),
                                transition: Transition.cupertino,
                              );
                              print(myProjectsList[index].runtimeType);
                            },
                            child: const Text(
                              "Details",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}