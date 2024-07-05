import 'package:flutter/material.dart';

import 'package:portfolio_app/pages/aboutPage.dart';
import 'package:portfolio_app/pages/contactPage.dart';
import 'package:portfolio_app/pages/myProjects.dart';
import 'package:portfolio_app/pages/homepage.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {


  int pageIndex = 0;

  final screens = [
   const HomePage(),
    const MyProjects(),
    const ContactPage(),
    const AboutPage()
  ];


  bottomAppbar(){
    return NavigationBarTheme(
        data: NavigationBarThemeData(
          // indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 15,fontWeight: FontWeight.w500
            )
          )
        ),
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.only(top: 20),
          child: NavigationBar(
        
            height: 40,
            backgroundColor: Colors.black,
            selectedIndex: pageIndex,
            onDestinationSelected: (pageIndex) {
              setState(() {
                this.pageIndex=pageIndex;
              });
            },
            destinations: const [
        
              NavigationDestination(
                icon: Icon(Icons.home,color: Colors.white), 
                label: 'Home'
                ),
              NavigationDestination(
                icon: Icon(Icons.production_quantity_limits,color: Colors.white), 
                label: 'Projects'
                ),
              NavigationDestination(
                icon: Icon(Icons.contact_page,color: Colors.white), 
                label: 'Contact'
                ),
              NavigationDestination(
                icon: Icon(Icons.person,color: Colors.white), 
                label: 'Person'
                ),
              
            ],
          ),
        ),
      );
  }



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[pageIndex],
     
      bottomNavigationBar: bottomAppbar(),
      //  bottomNavigationBar:NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //     // indicatorColor: Colors.blue.shade100,
      //     labelTextStyle: MaterialStateProperty.all(
      //       TextStyle(
      //         fontSize: 15,fontWeight: FontWeight.w500
      //       )
      //     )
      //   ),
      //   child: NavigationBar(
      //     backgroundColor: Colors.black,
      //     selectedIndex: pageIndex,
      //     onDestinationSelected: (pageIndex) {
      //       setState(() {
      //         this.pageIndex=pageIndex;
      //       });
      //     },
      //     destinations: const [
      //       NavigationDestination(
      //         icon: Icon(Icons.home,color: Colors.white), 
      //         label: 'Home'
      //         ),
      //       NavigationDestination(
      //         icon: Icon(Icons.production_quantity_limits,color: Colors.white), 
      //         label: 'Projects'
      //         ),
      //       NavigationDestination(
      //         icon: Icon(Icons.contact_page,color: Colors.white), 
      //         label: 'Contact'
      //         ),
      //       NavigationDestination(
      //         icon: Icon(Icons.person,color: Colors.white), 
      //         label: 'Person'
      //         ),
            
      //     ],
      //   ),
      // ) ,
    );
  }
}