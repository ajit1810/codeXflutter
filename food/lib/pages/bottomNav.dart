import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/cart.dart';
import 'package:food/pages/home.dart';
import 'package:food/pages/profile.dart';
import 'package:food/pages/wallet.dart';

// ignore: must_be_immutable
class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  _BottomNavState();

  int currentTabIndex = 0;

  late List<Widget> pages;

  late Widget currentPage;
  late Home homePage;
  late Profile profile;
  late Cart cart;
  late Wallet wallet;

  @override
  void initState() {
    homePage = Home();
    cart = Cart();
    profile = const Profile();
    wallet = Wallet();
    pages = [homePage, cart, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          )
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
