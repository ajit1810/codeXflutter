import 'package:flutter/material.dart';
class Appbar_icons extends StatelessWidget {
  const Appbar_icons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows",style: TextStyle(color:Colors.black )),
        actions: [
          IconButton(onPressed: (){print("click add");},icon: Icon(Icons.add,color:Colors.black,),tooltip: "add",color: Colors.red, ),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color:Colors.black ,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.facebook_rounded),),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_home,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_box_rounded,color: Colors.red,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.headset)),
          IconButton(onPressed: (){}, icon: Icon(Icons.airplanemode_off)),
        ],
      ),
    );
  }
}