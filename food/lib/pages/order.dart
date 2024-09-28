import 'package:flutter/material.dart';
import 'package:food/services/database.dart';
import 'package:food/services/shared_pref.dart';
import 'package:food/widget/widget_support.dart';

class Orders extends StatefulWidget {
  String? image, quantity, totalspecfic, name;
  Orders({super.key, this.image, this.name, this.quantity, this.totalspecfic});

  @override
  State<Orders> createState() => _OrdersState(totalspecfic);
}

class _OrdersState extends State<Orders> {
  String? totalspecfic;
  _OrdersState(this.totalspecfic);

  String? id, wallet;

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

    super.initState();
  }

  Stream? foodStream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Orders',
          style: AppWidget.HeadlineTextFieldStyle(),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20,bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.network(
                widget.image ?? "",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(),
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Your Order :',
                        style: AppWidget.LightTextFieldStyle(),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(widget.name ?? "",
                          style: AppWidget.boldTextFieldStyle()),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Your Quantity :',
                        style: AppWidget.LightTextFieldStyle(),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(widget.quantity ?? "",
                          style: AppWidget.boldTextFieldStyle()),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Total :',
                        style: AppWidget.HeadlineTextFieldStyle(),
                      ),
                      const SizedBox(
                        width: 55,
                      ),
                      Text(widget.totalspecfic ?? "",
                          style: AppWidget.boldTextFieldStyle()),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    int amount = int.parse(wallet!) - int.parse(totalspecfic!);

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
                    margin: const EdgeInsets.only(
                        top: 50, left: 20.0, right: 20.0, bottom: 20.0),
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: const Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
