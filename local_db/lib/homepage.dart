
import 'package:flutter/material.dart';
import 'package:local_db/localdb.dart';
import 'package:local_db/show_players.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int jerNo = 0;
  String name = '';
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
              child: const Text(
                "JerNo",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter JerNO',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)
                  )
                ),
                onChanged: (value) {
                  jerNo = int.parse(value);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
              child: const Text(
                "PlayerName",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextFormField(
                initialValue: '',
                decoration: const InputDecoration(
                    hintText: 'Enter PlayerName',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)
                  )
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
            ),
           Container(
           margin: EdgeInsets.symmetric(horizontal: 100,),
           padding: EdgeInsets.only(top: 30,bottom: 30),
             child: ElevatedButton(
              style: ButtonStyle(
             fixedSize: MaterialStateProperty.all(Size(180, 40))
              ),
              onPressed: ()async{
               if (jerNo != 0 && name != '') {
                 print(jerNo);
               print(name);
               PlayerModelClass p = PlayerModelClass(jerNo: jerNo, name: name);
               await insertPlayer(p);
               setState(() {
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                     content: Text('Inserted details successfully')));
               });
              } else {
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                     content: Text('please Insert details ')));
                });
              }
             }, child: Text('Insert',style: TextStyle(fontSize: 18),)),
           ),
            Container(
               margin: EdgeInsets.symmetric(horizontal: 100,),
              child: ElevatedButton(
                       style: ButtonStyle(
               fixedSize: MaterialStateProperty.all(Size(180, 40))
                       ),
                       onPressed: (){
              Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const ShowPlayers()));
              }, child: Text('Show Players',
              style: TextStyle(fontSize: 18),)),
            )
          ],
        ),
      ),
    );
  }
}
