// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:food/widget/app_constant.dart';

// class StripeService{

//   // private constr
//   StripeService._();

//    // static instance variable 
//   static final StripeService instance = StripeService._();


   

//   //   Future<void> makePayment( amount)async{
//   //   try {
//   //     String? paymentIntentClientSecret = await _createPaymentIntent(amount, 'INR');

//   //     if (paymentIntentClientSecret == null ) return;
//   //     await Stripe.instance.initPaymentSheet(
//   //       paymentSheetParameters: SetupPaymentSheetParameters(
//   //         paymentIntentClientSecret: paymentIntentClientSecret,
//   //         merchantDisplayName: "AjitMane"
//   //       ),
//   //       );
//   //       _processPayment(amount);
//   //   } catch (e) {
//   //     print("error makePayment : $e");
//   //     showDialog(
//   //       context: context,
//   //       builder: (_) => AlertDialog(
//   //         title: const Text('Error'),
//   //         content: Text('An error occurred: $e'),
//   //       ),
//   //     );
//   //   }
//   // }



  
//   //   Future<void> _processPayment(amount)async{
//   //   try {
//   //     await Stripe.instance.presentPaymentSheet();
//   //          add = int.parse(wallet!) + int.parse(amount);
//   //     await SharedPreferenceHelper().saveUserWallet(add.toString());
//   //     await DatabaseMethods().UpdateUserwallet(id!, add.toString());
//   //     showDialog(
//   //       context: context,
//   //       builder: (_) => const AlertDialog(
//   //         content: Column(
//   //           mainAxisSize: MainAxisSize.min,
//   //           children: [
//   //             Row(
//   //               children: [
//   //                 Icon(Icons.check_circle, color: Colors.green),
//   //                 Text("Payment Successful"),
//   //               ],
//   //             ),
//   //           ],
//   //         ),
//   //       ),
//   //     );
//   //   } catch (e) {
//   //     print('_processPayment Error : $e');
//   //   }
//   // }

  
//   //  Future<String?> _createPaymentIntent( amount,String currency)async{
//   //   try {

//   //     // instance 
//   //     final Dio dio = Dio();
//   //     Map<String ,dynamic>data= {
//   //       'amount':_calculateAmount(amount),
//   //       'currency' : currency,
//   //     };
//   //     var response = await dio.post('https://api.stripe.com/v1/payment_intents',data: data,
//   //     options: Options(contentType: Headers.formUrlEncodedContentType,
//   //     headers: {
//   //       'Authorization':"Bearer $secretKey",
//   //       "Content-Type":"application/x-www-form-urlencoded"
//   //     })
//   //     );

//   //     if(response.data != null){
//   //       // print(response.data);
//   //       return response.data['client_secret'];
//   //     }
//   //     return null;

//   //   } catch (e) {
//   //     print("Error _createPaymentIntent : $e");
//   //   }
//   //   return null;
//   // }


//   //  String _calculateAmount(amount){
//   //     final calculatedAmount = amount * 100;
//   //     return calculatedAmount.toString();
//   //   }





  
   


// }