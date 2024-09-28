import 'package:flutter/material.dart';
import 'package:gallerypicker_example/imagePicker.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GalleryImgPic(),
    );
  }
}
