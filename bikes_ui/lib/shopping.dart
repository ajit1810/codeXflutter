import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCard extends StatefulWidget {
  int? countajit=0;
   ShoppingCard({super.key, this.countajit});

  @override
  State<ShoppingCard> createState() => _ShoppingCardState(countajit);
}

class _ShoppingCardState extends State<ShoppingCard>{
  int? countajit=0;
  _ShoppingCardState(this.countajit);


  Widget reuse(String image, String bname, String price) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
          ),
          width: 379,
          height: 95,
          // color: Colors.amber,
          child: Row(
            children: [
              Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(54, 62, 81, 1),
                      Color.fromRGBO(76, 87, 112, 1)
                    ])),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  height: 62,
                  width: 82,
                  child: Image(image: AssetImage(image)),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 77,
                  width: 234,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 23,
                        width: 180,
                        child: Text(
                          bname,
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 13),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 90,
                                  child: Text(
                                    price,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 30,
                                  width: 79,
                                  child: Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 24,
                                        
                                        decoration: BoxDecoration(
                                      
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: const LinearGradient(colors: [
                                              Color.fromRGBO(52, 200, 232, 1),
                                              Color.fromRGBO(78, 74, 242, 1)
                                            ])),
                                        child: Container(
                                            padding: const EdgeInsets.all(5),
                                            height: 16,
                                            width: 16,
                                            
                                            child: const Image(
                                                image: AssetImage(
                                                    'images/add.png'))),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 8, right: 8),
                                        width: 5,
                                        height: 20,
                                        child: Text('$countajit',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: const LinearGradient(colors: [
                                              Color.fromRGBO(54, 62, 81, 1),
                                              Color.fromRGBO(76, 87, 112, 1)
                                            ])),
                                        child: Container(
                                            padding: const EdgeInsets.all(5),
                                            height: 1,
                                            width: 16,
                                            child: const Image(
                                                image: AssetImage(
                                                    'images/minus.png'))),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 1,
          color: const Color.fromARGB(22, 158, 158, 158),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(3, 6, 11, 1),
              Color.fromRGBO(98, 120, 161, 1)
            ])),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 44,
                        width: 44,
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
                          height: 28,
                          width: 28,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios_new_rounded),
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 30,
                        width: 190,
                        child: Text('My Shopping Cart',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            reuse('images/white_bicycle.png', 'PEUGEOT-LR01', '\$ 1,999.99'),
            reuse(
                'images/black_bicycle.png', 'PILOT-CHROMOLY 520', '\$ 3999.99'),
            reuse('images/helmet.png', 'SMITH-Trade', '\$ 120'),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 23,
              width: 290,
              child: Text(
                'Your cart qualifies for free shipping',
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 0.6)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 42,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(36, 44, 59, 1)),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 20,
                    width: 42,
                    child: Text(
                      'Bike30',
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 0.6)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 148),
                    height: 42,
                    width: 110,
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
                      padding: const EdgeInsets.only(left: 35, top: 10),
                      child: Text(
                        'Apply',
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: 348,
              height: 75,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 91,
                        height: 23,
                        child: Text('Subtotal:',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: const Color.fromRGBO(255, 255, 255, 0.87),
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        width: 91,
                        height: 23,
                        child: Text('Delivery Fee:',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: const Color.fromRGBO(255, 255, 255, 0.87),
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        width: 91,
                        height: 23,
                        child: Text('Discount:',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: const Color.fromRGBO(255, 255, 255, 0.87),
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // width: 91,
                        height: 23,
                        child: Text(
                          '\$6119.99',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: const Color.fromRGBO(255, 255, 255, 0.6),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        // width: 91,
                        height: 23,
                        child: Text('\$0',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: const Color.fromRGBO(255, 255, 255, 0.6),
                                fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        // width: 91,
                        height: 23,
                        child: Text('30%',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: const Color.fromRGBO(255, 255, 255, 0.6),
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: 353,
              height: 26,
              child: Row(
                children: [
                  Container(
                    height: 23,
                    width: 40,
                    child: Text('Total:',
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: const Color.fromRGBO(255, 255, 255, 0.87),
                            fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    width: 190,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 23,
                    width: 88,
                    child: Text('\$4,283.99',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: const Color.fromRGBO(56, 184, 234, 1),
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 174,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(17, 22, 30, 1)),
              child: Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
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
                      padding: const EdgeInsets.all(5),
                      height: 28,
                      width: 28,
                      child: const Image(image: AssetImage('images/forward.png')),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: Text(
                      'Checkout',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 0.6)),
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
