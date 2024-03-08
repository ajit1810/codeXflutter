import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practical11/details.dart';

class Backend extends StatefulWidget {
  const Backend({super.key});

  @override
  State<Backend> createState() => _BackendState();
} 

class _BackendState extends State<Backend> {

  List data= [];

  fetchdata()async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    
     data = json.decode(response.body);

    //  print("${realdata[0]}"); 
    setState(() {
      
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initstate");
    fetchdata();
  }
  @override
  Widget build(BuildContext context) {
    // print("bulid method called $name");
    return Scaffold(
      appBar: AppBar(
        title: Text("Backend"),
      ),
      body: ListView.builder(
        itemCount:  data.length,
        itemBuilder: (context, index) {
          return Container(
            
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(200, 50))
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Details(userprofile: data[index],),));
              }, 
              child: Text("${data[index]['name']}")),
          );
        },),
    );
  }
}