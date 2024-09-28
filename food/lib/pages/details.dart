import 'package:flutter/material.dart';
import 'package:food/services/database.dart';
import 'package:food/services/shared_pref.dart';
import 'package:food/widget/widget_support.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {

  String image , name , detail ,shortdetails, price;
   Details({super.key , required this.image,required this.name,required this.detail ,required this.shortdetails,required this.price});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1 , total = 0;

  String? id;

  getTheSharedPref()async{
      id=await SharedPreferenceHelper().getUserId();
      setState(() {
        
      });
  }



  ontheLoad()async{
   await getTheSharedPref();
    setState(() {
      
    });
  
  }

  @override
  void initState() {
    super.initState();
      ontheLoad();
      total= int.parse(widget.price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(left: 20,),
            child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        ),
        title: Text('Details',style: AppWidget.HeadlineTextFieldStyle(),),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.image,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   widget.name,
                    //   style: AppWidget.SemiBoldTextFieldStyle(),
                    // ),
                    Text(
                      widget.name,
                      style:TextStyle(
                          color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      a--;
                      total=total-int.parse(widget.price);
                      setState(() {});
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Icon(Icons.remove, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  a.toString(),
                  style:TextStyle(
                     color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold
                  )
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    a++;
                    // for increase the amount 
                    total=total+int.parse(widget.price);
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Icon(Icons.add, color: Colors.black),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Text(widget.detail,
            style: AppWidget.LightTextFieldStyle(),maxLines: 3,
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text('Delivery Time',style: TextStyle(
                   color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold
                ),),
                const SizedBox(width: 10,),
                const Icon(Icons.alarm , color: Colors.white,),
                Text('30 min',style: TextStyle(
                   color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold
                ),)
              ],
            ),
            const Spacer(), 
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',style: TextStyle(
                         color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold
                      ),),
                      Text('\$${total.toString()}',style: AppWidget.boldTextFieldStyle(),)
                    ],
                  ),
                  GestureDetector(
                    onTap: () async{
                      Map<String,dynamic> addFoodtoCart={
                        "Name":widget.name,
                        "Quantity": a.toString(),
                        "Total" : total.toString(),
                        "Image" : widget.image
                      };
                      await DatabaseMethods().addFoodtoCart(addFoodtoCart, id!);
                       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.orange,
              content: Text(
                'Food Add to Cart',
                style: TextStyle(fontSize: 18),
              )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: const EdgeInsets.all(8),
                      
                      decoration:  BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('Add To Cart',style: TextStyle(
                            color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold
                          ),),
                          SizedBox(width: 20,),
                          Container(
                    
                            padding: EdgeInsets.all(3),
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: const Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                          ),
                             SizedBox(width: 10,),
                        ],
                      ),
                    
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
