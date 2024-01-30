import 'package:flutter/material.dart';

class BoxcolorChange extends StatefulWidget {
  const BoxcolorChange({super.key});

  @override
  State<BoxcolorChange> createState() => _BoxcolorChangeState();
}

class _BoxcolorChangeState extends State<BoxcolorChange> {
  bool boxcolor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Box Color Change"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: boxcolor ? Colors.amber : Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  boxcolor = !boxcolor;
                });
              }, child: Text("click",))
            ],
          ),
        ),
    );
  }
}