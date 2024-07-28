import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food/firebase_options.dart';
import 'package:food/pages/onboard.dart';
import 'package:food/widget/app_constant.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   Stripe.publishableKey=publishableKey;
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoard()
    );
  }
}
