import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/pages/aboutPage.dart';
import 'package:portfolio_app/pages/contactPage.dart';
import 'package:portfolio_app/pages/myProjects.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  reuse(int num, String text) {
    return Row(
      children: [
        Text('$num',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(text),
        )
      ],
    );
  }

  reUseCard(img, tech) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(37, 37, 37, 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            // padding: EdgeInsets.all(10),
            height: 30,
            width: 30,
            child: Image(
              image: AssetImage(
                img,
              ),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            tech,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: const Color(0xff262628),
          icon: const Icon(Icons.menu, color: Colors.white),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: const Text(
                'Projects',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Get.to(
                () => const MyProjects(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 3),
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: const Text(
                'Contact',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Get.to(
                () => const ContactPage(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 3),
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: const Text(
                'About Me',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Get.to(
                () => const AboutPage(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 2),
              ),
              value: 1,
            )
          ],
        ),
        //i don't wanr backarrow
        // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 0,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.only(top: 50),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'images/myImage.png',
                    height: 450,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
              ),
              child: const Column(
                children: [
                  Text(
                    "Ajit Mane",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Software Developer",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
        builder: (context, state) {
          return Container(
            margin:
                const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),

            // height: 450,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(100))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reuse(5, 'Projects'),
                    reuse(10, 'Clients'),
                    reuse(22, 'Messages'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  child: const Text('Skills',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reUseCard('images/icons8-flutter-50.png', 'Flutter'),
                    reUseCard('images/icons8-react-js-50.png', 'React'),
                    reUseCard('images/spring-gray.png', 'SpringBoot'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reUseCard('images/icons8-java-50.png', 'Java'),
                    reUseCard('images/icons8-dart-50 (1).png', 'Dart'),
                    reUseCard('images/icons8-database-50.png', 'MySQL'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reUseCard('images/icons8-html-50 (1).png', 'HTML'),
                    reUseCard('images/icons8-css-50 (1).png', 'CSS'),
                    reUseCard('images/icons8-javascript-50.png', 'Javascript'),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
