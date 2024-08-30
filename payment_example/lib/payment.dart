import 'package:flutter/material.dart';
import 'package:payment_example/services/stripe_services.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Payment Example'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            StripeService.instance.makePayment();
          },
          child: Text('Pay'),
        ),
      ),
    );
  }
}