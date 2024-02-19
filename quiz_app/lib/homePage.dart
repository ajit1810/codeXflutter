import 'package:flutter/material.dart';
import 'package:quiz_app/list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0;
  int selectedAnsIndex = -1;
  int totalScore = 0;
  MaterialStatePropertyAll<Color?>? checkAns(int buttonIndex) {
    if (selectedAnsIndex != -1) {
      if (buttonIndex == selectedAnsIndex) {
        if (selectedAnsIndex == Questions[questionIndex]["correctAnswer"]) {
          totalScore++;
          return MaterialStatePropertyAll(Colors.green);
        } else {
          return MaterialStatePropertyAll(Colors.red);
        }
      } else {
        if (buttonIndex == Questions[questionIndex]["correctAnswer"]) {
          return MaterialStatePropertyAll(Colors.green);
        }
      }
    } else {
      return MaterialStatePropertyAll(Colors.blue);
    }
    return MaterialStatePropertyAll(Colors.blue);
  }

  Widget scorePage(){
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg-end.png"),
              opacity: 70,
              fit: BoxFit.cover,)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Result",
                  style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                  height: 50,
                ),
                Text(
                  "Marks $totalScore/${Questions.length}",
                  style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                  height: 50,
                ),
                Text(
                  totalScore >= 3 ? "You are passed" : "You are failed",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: (){
                   setState(() {
                      questionIndex = 0 ;
                    totalScore = 0;
                   });
                  },
                   child: Text("Try again"),
                   style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(200, 40)
                    )
                   ),),
                )
              ],
            ),
          ),
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    if (questionIndex == 5) {
      return scorePage();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Questions : ",
                style: TextStyle(fontSize: 25),
                ),
                Text(
                  "${questionIndex +1}/${Questions.length}",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black,
            ),
               SizedBox(
              height: 25,
            ),
            Container(
              child: Text(
                "Q.${questionIndex + 1 } : ${Questions[questionIndex]["question"]}",
                style: TextStyle(fontSize: 25),
              ),
            ),
             SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: (){
              setState(() {
                selectedAnsIndex = 0;
              });
            }, 
            child: Text("A.${Questions[questionIndex]["options"][0]}"),
            style: ButtonStyle(
              backgroundColor:checkAns(0),
                fixedSize: MaterialStatePropertyAll(
                  Size(300,30),
                )
              ) ,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
              setState(() {
                selectedAnsIndex = 1;
              });
            }, 
            child: Text("B.${Questions[questionIndex]["options"][1]}"),
            style: ButtonStyle(
              backgroundColor:checkAns(1),
                fixedSize: MaterialStatePropertyAll(
                  Size(300,30),
                )
              ) ,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                selectedAnsIndex = 2;
              });
            }, 
            child: Text("C.${Questions[questionIndex]["options"][2]}"),
            style: ButtonStyle(
              backgroundColor:checkAns(2),
                fixedSize: MaterialStatePropertyAll(
                  Size(300,30),
                )
              ) ,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                selectedAnsIndex = 3;
              });
            }, 
            child: Text("D.${Questions[questionIndex]["options"][3]}"),
            style: ButtonStyle(
              backgroundColor:checkAns(3),
                fixedSize: MaterialStatePropertyAll(
                  Size(300,30),
                )
              ) ,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if (questionIndex < Questions.length ) {
            setState(() {
              selectedAnsIndex = -1;
              questionIndex++;
            });
            
          }else{
            setState(() {
              questionIndex = 0;
              totalScore = 0 ;
            });
          }
        },
        tooltip: 'Increment',
        child: const Icon(Icons.forward_sharp),
      ), 
    );
  }
}