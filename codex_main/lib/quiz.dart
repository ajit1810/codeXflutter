import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  List questions;
   Quiz({super.key,required this.questions});

  @override
  State<Quiz> createState() => _QuizState(questions);
}

class _QuizState extends State<Quiz> {
  List questions;
  _QuizState(this.questions);

   int questionIndex = 0;
  int selectedAnsIndex = -1;
  int totalScore = 0;
  bool enable = false;
  MaterialStatePropertyAll<Color?>? checkAns(int buttonIndex) {
    if (selectedAnsIndex != -1) {
      if (buttonIndex == selectedAnsIndex) {
        if (selectedAnsIndex == questions[questionIndex]["correctAnswer"]) {
          if (enable==true) {
            totalScore++;
          }
          return MaterialStatePropertyAll(Colors.green);
        } else {
          return MaterialStatePropertyAll(Colors.red);
        }
      } else {
        if (buttonIndex == questions[questionIndex]["correctAnswer"]) {
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
                  "Marks $totalScore/${questions.length}",
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
    if (questionIndex == questions.length) {
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
                  "${questionIndex +1}/${questions.length}",
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
              margin: EdgeInsets.all(20),
              child: Text(
                "Q.${questionIndex + 1 } : ${questions[questionIndex]["questions"]}",
                style: TextStyle(fontSize: 25),
              ),
            ),
             SizedBox(
              height: 25,
            ),
            ElevatedButton(
             onPressed: enable
                ? null
                : () {
                    setState(() {
                      selectedAnsIndex = 0;
                      enable = !enable;
                    });
                  },
            child: Text("A.${questions[questionIndex]["options"][0]}"),
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
             onPressed: enable
                ? null
                : () {
                    setState(() {
                      selectedAnsIndex = 1;
                      enable = !enable;
                    });
                  }, 
            child: Text("B.${questions[questionIndex]["options"][1]}"),
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
            ElevatedButton(
             onPressed: enable
                ? null
                : () {
                    setState(() {
                      selectedAnsIndex = 2;
                      enable = !enable;
                    });
                  },
            child: Text("C.${questions[questionIndex]["options"][2]}"),
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
            ElevatedButton(
             onPressed: enable
                ? null
                : () {
                    setState(() {
                      selectedAnsIndex = 3;
                      enable = !enable;
                    });
                  },
            child: Text("D.${questions[questionIndex]["options"][3]}"),
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
          if (questionIndex < questions.length ) {
            setState(() {
              selectedAnsIndex = -1;
              questionIndex++;
               enable = false;
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