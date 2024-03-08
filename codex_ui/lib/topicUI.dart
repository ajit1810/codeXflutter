import 'package:codex_ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicUI extends StatefulWidget {
  String? topic = '';
  TopicUI({super.key ,this.topic});


  @override
  State<TopicUI> createState() => _TopicUIState(topic);
}

class _TopicUIState extends State<TopicUI> {

  String? topic = '';

  _TopicUIState(this.topic);

  Widget ReuseableCard(){
    return Container(
      height: 120,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white ,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(100),right: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            offset: Offset(2,2),
            blurRadius: 1,
            color: Colors.grey
            )
        ]
      ),child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 70,
            width: 90,
            decoration: BoxDecoration(
              color:Colors.grey,
              borderRadius: BorderRadius.circular(100)
            ),
            ),
             Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('$topic',style: GoogleFonts.anekTamil(),),),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color.fromRGBO(44, 55, 149, 0.67),Color.fromRGBO(44, 55, 149, 0.67)
          ])
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50,right: 10),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                          }, 
                                        icon: Icon(Icons.arrow_back_ios_new_sharp,
                                        color: Colors.white,)
                                        ),
                          Text('Java',
                          style: GoogleFonts.jost(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                          Text('Full Stack',
                          style: GoogleFonts.quicksand(
                            fontSize: 25,
                            color: Colors.white
                          ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 60,),
                      child: Container(
                        margin: EdgeInsets.only(top:10 ,left: 30),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(62,35,232,1),Color.fromRGBO(0,0,0,1)
                            ]
                            ),
                            image:DecorationImage(image: AssetImage('images/java.png')) 
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                child : Container(
                  padding: EdgeInsets.only(top: 50),
                  // height: double.infinity,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                  ),
                  child: Column(
                    
                    children: [
                      SizedBox(height: 30,),
                      ReuseableCard(),
                      SizedBox(height: 20,),
                      ReuseableCard(),
                      SizedBox(height: 20,),
                      ReuseableCard(),
                        SizedBox(height: 20,),
                      ReuseableCard(),
                        SizedBox(height: 20,),
                    
                      
                  
                  
                    ],
                  ),
                ),
                
                
              )
              ],
            ),
          ),
        ),
      ),

      
    );
  }
}