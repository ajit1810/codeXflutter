import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/cart.dart';
import 'package:food/pages/details.dart';
import 'package:food/services/database.dart';
import 'package:food/widget/widget_support.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, burger = false, salad = false;

  Stream? foodItemStream;

  //data  get from firestore
  ontheload() async {
    foodItemStream = await DatabaseMethods().getFoodItem("Pizza");
    setState(() {});
  }

  @override
  void initState() {
    ontheload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size(double.maxFinite, 10),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.only(top: 0.0, left: 20.0, right: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, ',
                      // style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cart(),
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Delicous Food',
                  // style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  style: AppWidget.HeadTextFieldStyle(),
                ),
                Text(
                  'Discover and Get Great Food',
                  // style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  style: AppWidget.LightTextFieldStyle(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: showItem()),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: allItems(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(height: 400, child: allItemsVertically())
              ],
            ),
          ),
        ));
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () async {
            icecream = true;
            pizza = false;
            burger = false;
            salad = false;

            foodItemStream = await DatabaseMethods().getFoodItem('Ice-cream');
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Color.fromARGB(255, 150, 150, 150) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/ice-cream.png',
                color: icecream ? Colors.amber : Colors.black,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            icecream = false;
            pizza = true;
            burger = false;
            salad = false;
            foodItemStream = await DatabaseMethods().getFoodItem('Pizza');
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Color.fromARGB(255, 150, 150, 150) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/pizza.png',
                color: pizza ? Colors.amber : Colors.black,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            icecream = false;
            pizza = false;
            burger = true;
            salad = false;
            foodItemStream = await DatabaseMethods().getFoodItem('Burger');
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Color.fromARGB(255, 150, 150, 150) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/burger.png',
                color: burger ? Colors.amber : Colors.black,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            icecream = false;
            pizza = false;
            burger = false;
            salad = true;
            foodItemStream = await DatabaseMethods().getFoodItem('Salad');
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Color.fromARGB(255, 150, 150, 150) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'images/salad.png',
                color: salad ? Colors.amber : Colors.black,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget allItems() {
    return StreamBuilder(
      stream: foodItemStream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data.docs[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(
                              image: ds["Image"],
                              detail: ds["Detail"],
                              shortdetails: ds["ShortDetails"],
                              name: ds["Name"],
                              price: ds["Price"],
                            ),
                          ));
                    },
                    child: Container(
                      width: 160,    
                        color: Color(0404246),    
                      margin: const EdgeInsets.only(right: 15,bottom: 15),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                        
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  ds["Image"],
                                  height: 120,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                ds["Name"],
                                style: AppWidget.SemiBoldTextFieldStyle(),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                ds["ShortDetails"],
                                style: AppWidget.ownLightTextFieldStyle(),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$${ds['Price']}",
                                style: AppWidget.SemiBoldTextFieldStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : const CircularProgressIndicator();
      },
    );
  }

  Widget allItemsVertically() {
    return StreamBuilder(
      stream: foodItemStream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data.docs[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(
                                        image: ds["Image"],
                                        detail: ds["Detail"],
                                        shortdetails: ds["ShortDetails"],
                                        name: ds["Name"],
                                        price: ds["Price"],
                                      )));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 1, right: 13),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              margin: const EdgeInsets.only(left: 0),
                              padding: const EdgeInsets.only(
                                  left: 5, top: 6, bottom: 6, right: 1),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(70),
                                    child: Image.network(
                                      ds["Image"],
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: 170,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 20, right: 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.0,
                                          child: Text(
                                            ds["Name"],
                                            style: AppWidget
                                                .SemiBoldTextFieldStyle(),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.0,
                                          child: Text(
                                            ds['ShortDetails'],
                                            style:
                                                AppWidget.ownLightTextFieldStyle(),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.1,
                                          child: Text(
                                            "\$${ds['Price']}",
                                            style: AppWidget
                                                .SemiBoldTextFieldStyle(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  );
                },
              )
            : const CircularProgressIndicator();
      },
    );
  }
}
