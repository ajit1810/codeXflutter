import 'package:codex_ui/CodesList/javacodelist.dart';
import 'package:codex_ui/topicUI.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget courses(String title){
    return Row(
     mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20,top: 20,bottom: 10),
          child: Text(title,
          style:  GoogleFonts.quicksand(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(0, 0, 0, 1))
          ),
        ),
      ],
    );
  }

  Widget ImageCard(Color gradient1,Color gradient2,String coursename,String image){
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
      height: 200,
      width: 180,
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column( 
            children: [
              Text(coursename,
              style:  GoogleFonts.jost(
                color: Colors.white,fontSize: 15),
                ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 100,
                width: 130,
                child: Image(image: AssetImage(image),fit: BoxFit.cover,),
              )
            ],
          ),
        ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4)
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
              gradient1,
              gradient2
          ]
          ),
         
      ),
    );
  }

  Widget CoursesWidget(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  TopicUI(CodeList:javacodes),));
            },
            child: ImageCard(const Color.fromRGBO(124, 132, 233, 0.8), const Color.fromRGBO(219, 19, 19, 0.8), 
            'Java full Stack', 'images/javafullstack.png'),
          ),
         
           InkWell(
            // onTap: () {
            //   Navigator.push(
            //     context, 
            //     MaterialPageRoute(builder: (context) =>  TopicUI(),));
            // },
            child: ImageCard(const Color.fromRGBO(124, 132, 233, 0.8), const Color.fromRGBO(219, 19, 19, 0.8), 
            'MERN Stack', 'images/mernstack.png'),
          ),



          InkWell(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) =>  TopicUI(CodeList:javacodes),));
            // },
            child: ImageCard(const Color.fromRGBO(124, 132, 233, 0.8), const Color.fromRGBO(219, 19, 19, 0.8), 
            'Java full Stack', 'images/javafullstack.png'),
          ),
         
           InkWell(
            // onTap: () {
            //   Navigator.push(
            //     context, 
            //     MaterialPageRoute(builder: (context) =>  TopicUI(),));
            // },
            child: ImageCard(const Color.fromRGBO(124, 132, 233, 0.8), const Color.fromRGBO(219, 19, 19, 0.8), 
            'MERN Stack', 'images/mernstack.png'),
          ),
          
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
               color: Color.fromRGBO(44, 55, 149, 0.67)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(40),right: Radius.circular(40)),
                      image: DecorationImage(
                        image: AssetImage('images/personicon.png'),fit: BoxFit.cover)
                    ),
                    ),
                  
                 Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child:  Text('Hi, Shubham',
                        style: GoogleFonts.jost(fontSize: 35,color: Colors.white),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10,left: 10),
                        child:  Text('Hope You are Fine',
                        style: GoogleFonts.quicksand(fontSize: 18,color: Colors.white),),
                      )
                    ],
                  )
                 
                ],
              ),
            ),
              courses('Courses For You'),
              CoursesWidget(),
              courses('Upcoming Courses'),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                height: 160,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(242, 141, 141, 1),
                        Color.fromRGBO(98, 21, 21, 1)
                    ])
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                       Container(
                        margin: const EdgeInsets.only(left: 20,top: 10),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text('9th March 2024',
                          style: GoogleFonts.anekTamil(
                            fontSize: 15,color: Colors.white),),
                           Container(
                            margin: const EdgeInsets.only(top: 8),
                             child:  Text('10 am - 12 am',
                              style: GoogleFonts.anekTamil(
                                 fontSize: 12,color: Colors.white)
                             ),
                           ),
                          ],
                         ),
                       ),
                        Container(
                          margin: const EdgeInsets.only(left: 90,top: 10),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(const Size(120, 12)),
                              shape: MaterialStateProperty.all(const StadiumBorder()),
                              backgroundColor: const WidgetStatePropertyAll(Colors.blue)
                            ),
                            onPressed: (){}, child: Text('Join Demo',
                            style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                        ),
                      ],
                    ),
                  
                    Expanded(
                      child: Container(
                       
                        margin: const EdgeInsets.symmetric(horizontal: 60,vertical: 25),
                        child: Text('Flutter App Developmet',
                        style: GoogleFonts.anekTamil(
                          fontSize: 20,
                          color: Colors.white)),
                      ),
                    )
                  ],
                ),
        
              )
          ],
        ),
      ),
    );
  }
}