import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerental_ui/details.dart';
import 'package:homerental_ui/main.dart';
import 'package:homerental_ui/list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget reuse(String name) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      width: 80,
      height: 34,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(244, 243, 243, 1)),
      child: Center(
        child: Container(
          child: Text(name,
              style: GoogleFonts.raleway(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(133, 133, 133, 1))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 20),
                child: Text('Location',
                    style: GoogleFonts.raleway(
                      color: const Color.fromRGBO(131, 131, 131, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Jakarta',
                      style: GoogleFonts.raleway(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded)),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notification_add_outlined)),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 5, top: 0),
                height: 48,
                width: 278,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search address, or near you',
                      hintStyle: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(133, 133, 133, 1))),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 10),
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(160, 218, 251, 1),
                          Color.fromRGBO(10, 142, 217, 1)
                        ])),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Image(image: AssetImage('images/IC_Filter.png')),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            width: 405,
            height: 41,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 69,
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(160, 218, 251, 1),
                              Color.fromRGBO(10, 142, 217, 1)
                            ])),
                    child: Center(
                      child: Container(
                        width: 37,
                        height: 14,
                        child: Text(
                          'House',
                          style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ),
                  reuse('Apartment'),
                  reuse('Hotel'),
                  reuse('Villa'),
                  reuse('Shadow'),
                ],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 107,
                  child: Text(
                    'Near from you',
                    style: GoogleFonts.raleway(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 156),
                    width: 54,
                    height: 15,
                    child: Text(
                      'See more',
                      style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(133, 133, 133, 1)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
             margin: EdgeInsets.all(10),
            height: 272,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: details.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Details(image: details[index]['image'],
                                                            housename:details[index]['house-name'],
                                                            subname: details[index]['sub-name'],),
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10,right: 0),
                        //  height: 300,
                        width: 222,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('${details[index]['image']}'),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                            margin: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${details[index]['house-name']}',
                                  style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  '${details[index]['sub-name']}',
                                  style: GoogleFonts.raleway(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          215, 215, 215, 1)),
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 107,
                  child: Text(
                    'Best for you',
                    style: GoogleFonts.raleway(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 156),
                    width: 54,
                    height: 15,
                    child: Text(
                      'See more',
                      style: GoogleFonts.raleway(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(133, 133, 133, 1)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                // margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: house.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          height: 70,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                width: 74,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            '${house[index]['image']}'),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        '${house[index]['house-name']}',
                                        style: GoogleFonts.raleway(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 6, bottom: 6),
                                      child: Text('${house[index]['price']}',
                                          style: GoogleFonts.raleway(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  10, 142, 217, 1))),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            height: 24,
                                            width: 24,
                                            child: const Image(
                                              image: AssetImage(
                                                  'images/Vector.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                              padding: const EdgeInsets.all(2),
                                              height: 18,
                                              width: 70,
                                              child: Text(
                                                '${house[index]['bed-count']}',
                                                style: GoogleFonts.raleway(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        133, 133, 133, 1)),
                                              )),
                                          Container(
                                            padding: const EdgeInsets.all(2),
                                            height: 24,
                                            width: 24,
                                            child: const Image(
                                              image: AssetImage(
                                                  'images/IC_Bath.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                              padding: const EdgeInsets.all(2),
                                              height: 18,
                                              width: 90,
                                              child: Text(
                                                '${house[index]['bath-count']}',
                                                style: GoogleFonts.raleway(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        133, 133, 133, 1)),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                )),
          )
        ],
      ),
    );
  }
}
