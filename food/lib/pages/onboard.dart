import 'package:flutter/material.dart';
import 'package:food/pages/signup.dart';
import 'package:food/widget/content_model.dart';
import 'package:food/widget/widget_support.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint('currentIndex: ${currentIndex.toString()}');
    // debugPrint('contents: ${contents.length.toString()}');
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                  
                    currentIndex = index;
                     
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[index].image,
                          height:400,
                          width: MediaQuery.of(context).size.width ,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 20,),
                        Text(contents[index].title,style: AppWidget.HeadlineTextFieldStyle(),
                        ),
                         const SizedBox(height: 20,),
                         Text(contents[index].description,style: AppWidget.LightTextFieldStyle(),
                         )
                      ],
                    ),
                  );
                }),
          ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: 
                    List.generate(contents.length, (index) =>
                    
                      buildDot(index,context),
                    )  
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (currentIndex==contents.length-1) {
                    
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => const SignUp(),)
                      );
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
                },
                child: Container(
                  decoration:  BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(20)
                  ),
                  height: 60,
                  margin: const EdgeInsets.all(40),
                  width: double.infinity,
                  child: Center(
                    child:  Text(
                      currentIndex==contents.length -1?"Start":'Next',style: const TextStyle(
                      color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )
        ],
      ),
    );
  }
  Container buildDot(int index,BuildContext context){
    return Container(
      height: 10,
      width: currentIndex==index?18:7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey
      ),
    );
  }
}
