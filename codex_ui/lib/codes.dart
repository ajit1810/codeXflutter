import 'package:codex_ui/topicUI.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:google_fonts/google_fonts.dart';

class Codes extends StatefulWidget {
  Map CodeList;

  Codes({super.key, required this.CodeList});

  @override
  State<Codes> createState() => _CodesState(CodeList);
}

class _CodesState extends State<Codes> {
  Map? CodeList;
  _CodesState(this.CodeList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFF9B89CE),
        appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF9B89CE),
         leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white), // Custom back arrow
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 50, right: 10, top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       
                        Text(
                          'Java',
                          style: GoogleFonts.jost(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Full Stack',
                          style: GoogleFonts.quicksand(
                              fontSize: 25, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0, left: 30,right: 30),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(62, 35, 232, 1),
                            Color.fromRGBO(0, 0, 0, 1)
                          ]),
                      image:
                          DecorationImage(image: AssetImage('images/java.png'))),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: const EdgeInsets.only(top: 10),
              height: 800,
             
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(CodeList!['title'],
                        style: GoogleFonts.anekTamil(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 2,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 11, left: 30,),
                        child: Icon(Icons.circle, size: 10),
                      ),
                      Container(
                          height: 20,
                          width: 210,
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            "What is Java",
                            style: GoogleFonts.anekTamil(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 35, top: 0),
                    height: 45,
                    width: 300,
                    child: Text(
                      'Java is a popular programming language, created in 1995. It is owned by Oracle, and more than 3 billion devices run Java.  ',
                      style: GoogleFonts.anekTamil(fontSize: 10),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 11, left: 30),
                        child: Icon(Icons.circle, size: 10),
                      ),
                      Container(
                          height: 20,
                          width: 250,
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Java is Platform Independent',
                            style: GoogleFonts.anekTamil(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 35, top: 0),
                    height: 105,
                    width: 300,
                    child: Text(
                      'Java is platform-independent because it is compiled to a bytecode that can be run on any device that has a Java Virtual Machine (JVM). This means that you can write a Java program on one platform (such as Windows) and then run it on a different platform (such as macOS or Linux) without making any changes to the code.',
                      style: GoogleFonts.anekTamil(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                        height: 400,
                        child: Center(
                          child: ListView.builder(
                            itemCount: CodeList!['codes'].length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 10,left: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Code ${index+1}')
                                      ],
                                    ),
                                    Container(
                                      // color: Colors.grey,
                                      margin: EdgeInsets.all( 30),
                                      child: Container(
                                        child: HighlightView(
                                          
                                          '${CodeList!['codes'][index]}',
                                          languageId: 'java', 
                                          theme: githubDarkDimmedTheme,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
