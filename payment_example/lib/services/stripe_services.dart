import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_example/consts.dart';

class StripeService {
  // private constr
  StripeService._();

  // static instance variable 
  static final StripeService instance = StripeService._();


  // function for required process the payment
  Future<void> makePayment()async{
    try {
      String? paymentIntentClientSecret = await _createPaymentIntent(100, 'INR');

      if (paymentIntentClientSecret == null ) return;
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: "AjitMane"
        ),
        );
        _processPayment();
    } catch (e) {
      print("error makePayment : $e");
    }
  }


  // for payment intent 

  Future<String?> _createPaymentIntent(int amount,String currency)async{
    try {

      // instance 
      final Dio dio = Dio();
      Map<String ,dynamic>data= {
        'amount':_calculateAmount(amount),
        'currency' : currency,
      };
      var response = await dio.post('https://api.stripe.com/v1/payment_intents',data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Authorization':"Bearer $stripeSecretKey",
        "Content-Type":"application/x-www-form-urlencoded"
      })
      );

      if(response.data != null){
        // print(response.data);
        return response.data['client_secret'];
      }
      return null;

    } catch (e) {
      print("Error _createPaymentIntent : $e");
    }
    return null;
  }


  Future<void> _processPayment()async{
    try {
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      print('_processPayment Error : $e');
    }
  }


    String _calculateAmount(int amount){
      final calculatedAmount = amount * 100;
      return calculatedAmount.toString();
    }

}