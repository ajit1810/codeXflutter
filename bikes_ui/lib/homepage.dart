import 'package:bikes_ui/list.dart';
import 'package:bikes_ui/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState(product);
}

class _HomepageState extends State<Homepage> {
  List product = [];
  _HomepageState(this.product);

  Widget reuse(String image) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 45,
      width: 45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 20, width: 35, child: Image(image: AssetImage(image))),
        ],
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(53, 63, 84, 1),
            Color.fromRGBO(34, 40, 52, 1)
          ]),
          boxShadow: [BoxShadow(blurRadius: 1, offset: Offset(1, 1))]),
    );
  }

  Widget reuseablecard(String image, String btype, String bname, String price) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 190,
      width: 160,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(53, 63, 84, 1),
            Color.fromRGBO(34, 40, 52, 1)
          ]),
          boxShadow: [BoxShadow(blurRadius: 1, offset: Offset(1, 1))]),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 90),
                child: const Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.blue,
                )),
            Container(
                height: 90,
                width: 120,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(btype,
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(255, 255, 255, 0.6),
                          fontSize: 10)),
                  Text(bname,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 11)),
                  Text(price,
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(255, 255, 255, 0.6),
                          fontSize: 11))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget forloop() {
         return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Product(Cyclesname: 'PEUGEOT - LR01',image:'images/white_bicycle.png',price:'\$ 1,999.99' ),));
                  },
                  child: reuseablecard('images/white_bicycle.png', 'Road Bike',
                      'PEUGEOT - LR01',  '\$ 1,999.99'
                      ),
                ),


                   InkWell(
                    onTap: () {
                       Navigator.push(context,MaterialPageRoute(builder: (context) => Product(Cyclesname: 'SMITH - Trade',image:'images/helmet.png',price:'\$ 120',),));
                    },
                     child: reuseablecard('images/helmet.png', 'Road Helmet',
                      'SMITH - Trade', '\$ 120'),
                   ),
                       
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                InkWell(
                  onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Product(Cyclesname: 'SMITH - Trade',image:'images/helmet.png',price:'\$ 120',),));
                  },
                  child: reuseablecard('images/helmet.png', 'Road Helmet',
                      'SMITH - Trade', '\$ 120'),
                ),


                    InkWell(
                      onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => Product(Cyclesname: 'PILOT - CHROMOLY 520',image:'images/black_bicycle.png',price:'\$3,999.99',),));
                      },
                      child: reuseablecard('images/black_bicycle.png', 'Mountain Bike',
                       'PILOT - CHROMOLY 520', '\$ 3,999.99'),
                    ),
                       
              ],
            ),
          ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 55, 82, 1),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(34, 36, 39, 1),Color.fromRGBO(17, 98, 250, 1)
              ])
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 30, top: 40),
                      height: 44,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Choose Your Bike',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 70),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(52, 200, 232, 1),
                                        Color.fromRGBO(78, 74, 242, 1)
                                      ])),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height: 20,
                                width: 20,
                                child: const Image(
                                  image: AssetImage('images/image.png'),
                                  fit: BoxFit.cover,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30,right: 30),
                height: 220,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     padding: const EdgeInsets.only(top: 15),
                     margin: const EdgeInsets.only(top: 20),
                      height: 143,
                      width: 316,
                      child: const Image(
                        image: AssetImage('images/top_bicycle.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10,left: 20),
                          child: Text(
                            '30% Off',
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                color: const Color.fromRGBO(255, 255, 255, 0.6),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(53, 63, 84, 0.844),
                        Color.fromRGBO(34, 40, 52, 0.832)
                      ]),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 90,
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 20,
                                    width: 17,
                                    child: Text(
                                      'All',
                                      style: GoogleFonts.poppins(
                                          color:
                                              const Color.fromRGBO(255, 255, 255, 1)),
                                    )),
                              ],
                            ),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(52, 199, 232, 0.781),
                                      Color.fromRGBO(95, 93, 227, 0.171)
                                    ]),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      color: Color.fromRGBO(17, 98, 250, 1),
                                      offset: Offset(1, 1))
                                ]),
                          ),
                          reuse('images/Subtract.png'),
                          reuse('images/Union.png'),
                          reuse('images/Union (1).png'),
                          reuse('images/Union (2).png')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 420,
                      width: 350,
                      child: forloop()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
