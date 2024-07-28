import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Details extends StatefulWidget {
 
  Map projects = {};
  Details({super.key, required this.projects});

  @override
  State<Details> createState() => _DetailsState(projects);
}

class _DetailsState extends State<Details> {
  Map projects = {};
  _DetailsState(this.projects);

  int _imageIndex = 1;

  int pageIndex = 1;



  @override
  Widget build(BuildContext context) {
    // print(projects.length);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
        title: Text(projects['projectName'],style: TextStyle(color: Colors.white),),
         automaticallyImplyLeading: true,iconTheme:IconThemeData(color: Colors.white) ,
      ),
      body: SlidingSheet(
        elevation: 0,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace),
        body: Stack(
          alignment: Alignment.bottomCenter,

          // fit: StackFit.expand,
          children: [
            CarouselSlider(
                items: projects['imageUrl'].map<Widget>((imageUrl) {
                  return Container(
                    //  height: MediaQuery.of(context).size.height * 0.9,
                    padding: const EdgeInsets.all(20),
                    //  width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                      imageUrl,
                      // fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(

                    height: 350,
                    autoPlay: true,
                    aspectRatio: 0.8,
                    viewportFraction: 15,
                    initialPage: 1,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 500),
                    onPageChanged: (value, _) {
                      setState(() {
                        // print(value);
                        _imageIndex = value;
                      });
                    })),
            buildCarouselIndicator()
          ],
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),

            // height: 450,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(100))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, bottom: 20),
                  child: const Text('Description',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, bottom: 20,right: 20),
                  child: Text(projects['details']),
                )
              ],
            ),
          );
        },
      ),
     
       
      
    );
  }

  buildCarouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < projects['imageUrl'].length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == _imageIndex ? 8 : 5,
            width: i == _imageIndex ? 8 : 5,
            decoration: BoxDecoration(
                color: i ==  _imageIndex
                    ? const Color.fromARGB(255, 213, 57, 57)
                    : Colors.white,
                shape: BoxShape.circle),
          )
      ],
    );
  }
}
