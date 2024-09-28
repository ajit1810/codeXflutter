import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/pages/onboard.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _pageController = PageController();
  final int _autoSlideInterval = 3; // Duration in seconds
  final int _totalPages = 4; // Total number of pages
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: _autoSlideInterval), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (_pageController.page?.toInt() ?? 0) + 1;
        if (nextPage >= _totalPages)
          nextPage = 0; // Loop back to the first page
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Background image slider
            PageView(
              controller: _pageController,
              children: [
                Image.asset(
                  'images/ice-start-.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/burger-start-.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/pizza-start-.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/salad-start-.png',
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            // Content at the bottom center
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.all(16.0), // Adjust padding as needed
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      width: 250,
                      child: const Text(
                        "Food so good your taste buds will love it.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => OnBoard(),));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ))
          ],
        )
        
        );
  }
}