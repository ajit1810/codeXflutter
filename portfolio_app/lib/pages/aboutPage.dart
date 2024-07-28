import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/routePage.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
         leading: IconButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => RoutePage(),));
          }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          // iconTheme:IconThemeData(color: Colors.white) ,
       backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'About Me',
          style: TextStyle(letterSpacing: 2,color: Colors.white)
        ),
      ),
      body: SlidingSheet(
        elevation: 0,
        cornerRadius: 20,
        snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                margin: const EdgeInsets.only(top: 25, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 101, 101, 100),
                    borderRadius: BorderRadius.circular(280),
                    image: const DecorationImage(
                        image: AssetImage(
                          'images/about.png',
                        ),
                        fit: BoxFit.cover)),
              ),

               Container(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          FontAwesomeIcons.instagram ,color: Colors.white,
                        )),
                         IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          FontAwesomeIcons.linkedin ,color: Colors.white,
                        )),
                         IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          FontAwesomeIcons.github ,color: Colors.white,
                        )), IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          FontAwesomeIcons.twitter ,color: Colors.white,
                        ))
                    ],
                  ),
                )


              // Container(
              //      alignment: Alignment.topCenter,
              //       margin: EdgeInsets.only(
                      
              //           // top: MediaQuery.of(context).size.height * 0.4,
              //         ),
              //       child: const Column(
              //         children: [
              //           SizedBox(height: 5,),
              //            Text("Hello I am",
              //               style: TextStyle(color: Colors.white, fontSize: 20)),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Text(
              //             "Ajit Mane",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 40,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
                       
              //         ],
              //       ),
              //     )
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin:
                const EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 20),

            // height: 450,

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(
                  height: 5,
                ),
                 SizedBox(height: 5,),
                         Text("Hello I am",
                            style: TextStyle( fontSize: 20)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ajit Mane",
                          style: TextStyle(
                              
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                Text(
                  'Application developer and Web development with proper ui experience',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('''
    Hello! I'm a software developer with 1+ year of hands-on experience, specializing in a range of technologies including Core Java, Advanced Java, Flutter, React.js, and version control with Git and GitHub.

Flutter:
With practical experience in Flutter, I have built cross-platform mobile applications that ensure a smooth and engaging user experience on both iOS and Android devices. My proficiency in Dart, along with my attention to detail in mobile design principles, allows me to create visually appealing and highly functional mobile apps.

React.js:
On the frontend, I have utilized React.js to develop dynamic and responsive web applications. My projects have involved creating interactive user interfaces, managing application state effectively, and employing modern JavaScript practices to enhance user experiences.

Git & GitHub:
I am well-versed in using Git for version control and have a solid understanding of collaborative workflows on GitHub. This includes branching, merging, pull requests, and managing repositories, which ensures efficient and organized development processes.

Throughout my career, I have been committed to continuous learning and adapting to new technologies. I am passionate about problem-solving, collaborating with teams, and delivering high-quality software solutions. My goal is to leverage my skills and experience to contribute to innovative projects and drive technological advancements.

Feel free to reach out to discuss potential opportunities, collaborations, or any interesting projects in the realm of software development!


                    '''),
              ],
            ),
          );
        },
      ),
    );
  }
}
