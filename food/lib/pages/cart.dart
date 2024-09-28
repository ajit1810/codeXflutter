import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/order.dart';
import 'package:food/services/database.dart';
import 'package:food/services/shared_pref.dart';
import 'package:food/widget/widget_support.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  String? id, wallet;
  int total = 0, amount2 = 0;
  int calculatedTotal = 0;

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      amount2 = total;
      setState(() {});
    });
  }

  getthesharedpref() async {
    id = await SharedPreferenceHelper().getUserId();
    wallet = await SharedPreferenceHelper().getUserWallet();
    setState(() {});
  }

  ontheload() async {
    await getthesharedpref();
    foodStream = await DatabaseMethods().getFoodCart(id!);
    setState(() {});
  }

  @override
  void initState() {
    ontheload();
    startTimer();
    super.initState();
  }

  Stream? foodStream;

  Widget foodCart() {
    return StreamBuilder(
        stream: foodStream,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('No items in cart.',style: TextStyle(
              color: Colors.white,fontSize: 16
            ),));
          }

          // Calculate the total price dynamically
          calculatedTotal = snapshot.data!.docs.fold(0, (sum, doc) {
            return sum + int.parse(doc["Total"]);
          });
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    total = total + int.parse(ds["Total"]);
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Orders(
                                  image: ds["Image"],
                                  quantity: ds['Quantity'],
                                  name: ds["Name"],
                                  // price: ds["Price"],
                                  totalspecfic: ds['Total']),
                            ));
                      },

                      //delete
                      onLongPress: () async {
                        bool confirmDelete = await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Delete Item"),
                              content: const Text(
                                  "Are you sure you want to delete this item from your cart?"),
                              actions: [
                                TextButton(
                                  child: const Text("Cancel"),
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                ),
                                TextButton(
                                  child: const Text("Delete"),
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        if (confirmDelete) {
                          await DatabaseMethods()
                              .deleteFoodFromCart(id!, ds.id);
                        }
                        total = calculatedTotal! - int.parse(ds["Total"]);
                        setState(() {
                          debugPrint(ds["Total"]);

                          debugPrint("calculate $calculatedTotal");
                          debugPrint("total $total");
                        });
                      },

                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 20.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text(ds["Quantity"])),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.network(
                                      ds["Image"],
                                      height: 90,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    )),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ds["Name"],
                                      style: AppWidget.SemiBoldTextFieldStyle(),
                                    ),
                                    Text(
                                      "\$" + ds["Total"],
                                      style: AppWidget.SemiBoldTextFieldStyle(),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })
              : const CircularProgressIndicator();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Food Cart',
          style: AppWidget.HeadlineTextFieldStyle(),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.6,
                padding: const EdgeInsets.only(top: 10),
                // color: Colors.amber,
                child: foodCart()),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price",
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Text(
                    "\$" + calculatedTotal.toString(),
                    //  "\$" + (foodStream != null ? total.toString() : '0'),
                    style: TextStyle(
                      color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            GestureDetector(
              onTap: () async {
                int amount = int.parse(wallet!) - amount2;


                                          showDialog(
                    context: context,
                    builder: (_) => const AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                  Text("Payment Successfull"),
                                ],
                              ),
                            ],
                          ),
                        ));
                await DatabaseMethods()
                    .UpdateUserwallet(id!, amount.toString());
                await SharedPreferenceHelper()
                    .saveUserWallet(amount.toString());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: const Center(
                    child: const Text(
                  "CheckOut",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
