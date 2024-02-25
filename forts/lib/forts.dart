import 'package:flutter/material.dart';
import 'package:forts/Information/raigad.dart';
import 'package:forts/Information/shivneri.dart';

class Forts_info extends StatelessWidget {
  const Forts_info({super.key});

  Widget forts(String text) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      child: Text("$text",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("महाराष्ट्रातील किल्ले" ,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal
          ),
          ),
          // centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_sharp,))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              forts("शिवनेरी (Shivneri)"),
              Container(
                  margin: const EdgeInsets.only(left: 20,top: 10,right: 30,bottom: 10),
                  height: 500,
                  width:1000,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Shivneri(),));
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    boxShadow:const [
                      BoxShadow(
                        blurRadius: 9,
                        color: Color.fromARGB(133, 0, 0, 0),
                        offset: Offset(9, 12)
                      )
                    ],
                    image: const DecorationImage(image: AssetImage("images/Shivneri.jpg"),
                    fit: BoxFit.cover
                    )
                  ),
              ),
             forts("रायगड (Raigad)"),
              Container(
                  margin: const EdgeInsets.only(left: 20,top: 10,right: 30,bottom: 10),
                 height: 500,
                  width:1000,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Raigad(),));
                  },
                ),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    boxShadow:const [
                      BoxShadow(
                        blurRadius: 9,
                        color: Color.fromARGB(133, 0, 0, 0),
                        offset: Offset(9, 12)
                      )
                    ],
                    image: const DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/de/Nagarkhana%2C_Raigad_Fort%2C_India.jpg"),
                    fit: BoxFit.cover
                    )
                  ),
              ),
              forts("प्रतापगड (Pratapgad)"),
              Container(
                  margin: const EdgeInsets.only(left: 20,top: 10,right: 30,bottom: 10),
                height: 500,
                  width:1000,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    boxShadow:const [
                      BoxShadow(
                        blurRadius: 9,
                        color: Color.fromARGB(133, 0, 0, 0),
                        offset: Offset(9, 12)
                      )
                    ],
                    image: const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/4481330/pexels-photo-4481330.jpeg?cs=srgb&dl=pexels-shivam-tak-4481330.jpg&fm=jpg"),
                    fit: BoxFit.cover
                    )
                  ),
              ),
              forts("राजगड (Rajgad)"),
              Container(
                  margin: const EdgeInsets.only(left: 20,top: 10,right: 30,bottom: 60),
                 height: 500,
                  width:1000,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    boxShadow:const [
                      BoxShadow(
                        blurRadius: 9,
                        color: Color.fromARGB(133, 0, 0, 0),
                        offset: Offset(9, 12)
                      )
                    ],
                    image: const DecorationImage(image: NetworkImage("https://s3.ap-south-1.amazonaws.com/townscript-production/images/5b0c4b02-dce5-48a2-9596-7d0bfa1cb323.jpg"),
                    fit: BoxFit.cover
                    )
                  ),
              )
            ],
          ),
        ));
  }
}
