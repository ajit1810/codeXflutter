import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/home.dart';
import 'package:food/pages/order.dart';
import 'package:food/pages/profile.dart';
import 'package:food/pages/wallet.dart';

// ignore: must_be_immutable
class BottomNav extends StatefulWidget {
   String? username;
   BottomNav({super.key,this.username});
 
  @override
  State<BottomNav> createState() => _BottomNavState(username);
}

class _BottomNavState extends State<BottomNav> {

  String? username;
  _BottomNavState(this.username);

  
  int currentTabIndex = 0;

  late List<Widget> pages;

  late Widget currentPage;
  late Home homePage;
  late Profile profile;
  late Orders orders;
  late Wallet wallet;

  @override
  void initState() {
    homePage =  Home(username: username,);
    orders = const Orders();
    profile = const Profile();
    wallet = const Wallet();
    pages = [homePage, orders, wallet, profile];
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
            currentTabIndex=index;
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
