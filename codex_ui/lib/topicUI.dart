import 'package:codex_ui/CodesList/javacodelist.dart';
import 'package:codex_ui/codes.dart';
import 'package:codex_ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicUI extends StatefulWidget {
  List? CodeList = [];
  TopicUI({super.key, this.CodeList});

  @override
  State<TopicUI> createState() => _TopicUIState(CodeList);
}

class _TopicUIState extends State<TopicUI> {
  List? CodeList = [];
  _TopicUIState(this.CodeList);

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
      body: Column(
        
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
                      Container(
                        child: Text(
                          'Full Stack',
                          style: GoogleFonts.quicksand(
                              fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, left: 30, right: 30),
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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 20),
              height: 544,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Center(
                child: Container(
                  child: ListView.builder(
                    itemCount: CodeList!.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Codes(CodeList: CodeList![index]),
                                ));
                          },
                          child: Container(
                            height: 120,
                            width: 300,
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(100),
                                    right: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(2, 2),
                                      blurRadius: 1,
                                      color: Colors.grey)
                                ]),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 70,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    '${CodeList![index]['title']}',
                                    style: GoogleFonts.anekTamil(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
