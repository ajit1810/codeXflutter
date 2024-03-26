import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerental_ui/list.dart';

class Details extends StatefulWidget {
  String? image = '';
  String? housename = '';
  String? subname = '';

  Details({super.key, this.image, this.housename, this.subname});

  @override
  State<Details> createState() => _DetailsState(image, housename, this.subname);
}

class _DetailsState extends State<Details> {
  String? image = '';
  String? housename = '';
  String? subname = '';
  _DetailsState(this.image, this.housename, this.subname);


  Widget reuse (String image){
    return  Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
                      ),
                    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            width: 335,
            height: 319,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('$image'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                          padding: EdgeInsets.all(0),
                          height: 24,
                          width: 24,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new_rounded,
                                size: 18, color: Colors.white),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        height: 24,
                        width: 24,
                        child: Icon(Icons.bookmark_border_rounded,
                            size: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 160,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '$housename',
                          style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        child: Text('$subname',
                            style: GoogleFonts.raleway(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(212, 212, 212, 1))),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(255, 255, 255, 0.2),
                                // backgroundBlendMode: BlendMode.,
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/Vector_white.png'))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 14,
                            width: 80,
                            child: Text(
                              '6 Bedroom',
                              style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(212, 212, 212, 1)),
                            ),
                          ),
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(255, 255, 255, 0.2),
                                // backgroundBlendMode: BlendMode.,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/IC_Bath_white.png'))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 14,
                            width: 90,
                            child: Text(
                              '4 Bathroom',
                              style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(212, 212, 212, 1)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),  
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Description',style: GoogleFonts.raleway(
                  fontSize: 16,fontWeight: FontWeight.w500
                ),),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Text('The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More')
                )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 40,
                
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    borderRadius: BorderRadius.circular(30),
                    image :DecorationImage(image: AssetImage('images/person.png'))
                  ),
                ),

              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Garry Allen',style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,fontSize: 16
                  ),),
                  Text('Owner',style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(133, 133, 133, 1)
                  )),
                ],
              ),
              SizedBox(width: 110,),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 142, 217, 0.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(Icons.phone ,color: Colors.white, size: 15),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 142, 217, 0.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image(image: AssetImage('images/comment.png')),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: 111,
            width: 336,
            // color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Container(
                  child: Text('Gallery',style: GoogleFonts.raleway(
                    fontSize: 16,fontWeight: FontWeight.w500
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   reuse('images/gallery_1.jfif'),
                   reuse('images/gallery_2.jfif'),
                   reuse('images/gallery_3.jfif'),
                   reuse('images/gallery_4.jfif'),                   
                  ],
                )
              ],
            ),
            
          )
        ],
      ),
    );
  }
}
