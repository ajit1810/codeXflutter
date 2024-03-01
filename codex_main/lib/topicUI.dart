import 'package:codex_main/allcodes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicUI extends StatefulWidget {
  String? pagename = '';
  List? CodeList = [];
   TopicUI({super.key,this.pagename,this.CodeList});

  @override
  State<TopicUI> createState() => _TopicUIState(pagename,CodeList);
}

class _TopicUIState extends State<TopicUI> {
   String? pagename = '';
  List? CodeList = [];

  _TopicUIState (this.pagename,this.CodeList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$pagename'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: CodeList!.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 10),
                    width: 250,
                    child: ElevatedButton(
                      onPressed: (){
                      Navigator.push(
                        context,
                         MaterialPageRoute(builder: (context) => AllCodes(
                                        pagename: CodeList![index]["title"],
                                        CodeList: CodeList![index]),));
                    }, 
                     style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(
                          Size(200, 40),
                        ),
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 78, 76, 76)) 
                      ),
                      
                    child: Text(
                      "${CodeList![index]["title"]}"  
                      ), 
                       
                      ),
                  ),
                
                ],
              ),
            );
        },),
      ),
    );
  }
}