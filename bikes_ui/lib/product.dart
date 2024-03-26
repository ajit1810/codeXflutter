import 'package:bikes_ui/shopping.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bikes_ui/list.dart';

class Product extends StatefulWidget {

  String? Cyclesname = '';
  String? image = '';
  String? price = '';


  Product({super.key, this.Cyclesname,this.image,this.price});

  @override
  State<Product> createState() => _ProductState(Cyclesname,image,price);
}

class _ProductState extends State<Product>{
  String? Cyclesname = '';
  String? image = '';
  String? price = '';
  

  _ProductState(this.Cyclesname,this.image,this.price);
  String description =
      '''The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.

''';

int count = 0;


  @override
  Widget build(BuildContext context) {
    // print(productDetails);
    return Scaffold(
      backgroundColor: Color.fromRGBO(42, 85, 167, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 40),
                  height: 44,
                  width: 351,
                  child: Row(
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(52, 200, 232, 1),
                                  Color.fromRGBO(78, 74, 242, 1)
                                ])),
                        child: Container(
                            height: 28,
                            width: 28,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        height: 30,
                        width: 212,
                        child: Text(
                          
                          '$Cyclesname',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 210,
                width: 290,
                child: Image(image: AssetImage('$image')),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                width: 390,
                height: 422,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(53, 63, 84, 1),
                          Color.fromRGBO(34, 40, 52, 1)
                        ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40, bottom: 40),
                          width: 310,
                          height: 44,
                          child: Row(
                            children: [
                              Container(
                                height: 43,
                                width: 133,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(2, 2),
                                          color:
                                              Color.fromRGBO(210, 215, 226, 1),
                                          spreadRadius: 4)
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 23,
                                      width: 100,
                                      child: Text(
                                        'Description',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.6)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 43,
                                width: 142,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(2, 2),
                                          color:
                                              Color.fromRGBO(210, 215, 226, 1),
                                          spreadRadius: 4)
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 23,
                                      width: 100,
                                      child: Text(
                                        'Specification',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.6)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 180,
                      width: 335,
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 200,
                            // color: Colors.black,
                            child: Text(
                              '$Cyclesname',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 335,
                            // color: Colors.blue,
                            child: Text(
                              description,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.6)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 110,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 46, 61, 1),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  blurStyle: BlurStyle.outer)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Container(
                          height: 50,
                          width: 330,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 115,
                                  height: 36,
                                  child: Text(
                                    '$price',
                                    style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        color: Color.fromRGBO(61, 156, 234, 1)),
                                  )),
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromRGBO(52, 200, 232, 1),
                                          Color.fromRGBO(78, 74, 242, 1)
                                        ])),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: (
                                        
                                      ) {
                                        setState(() {
                                          count=1;
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ShoppingCard(countajit: count),
                                            ));
                                      },
                                      child: Container(
                                        height: 24,
                                        width: 90,
                                        child: Text(
                                          'Add to Cart',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
