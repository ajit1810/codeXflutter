import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultiImgPiker extends StatefulWidget {
  const MultiImgPiker({super.key});

  @override
  State<MultiImgPiker> createState() => _MultiImgPikerState();
}

class _MultiImgPikerState extends State<MultiImgPiker> {

  
     final ImagePicker _picker = ImagePicker();
     List<File?> imageList =[];
    File? selectedImage;
    //there function for getImage for our device
    Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);

    selectedImage = File(image!.path);
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "MultiImg Picker example",
         
        ),
      ),

      body: Column(
        children: [
           TextButton(
            onPressed: (){
              getImage();
            }, 
            child: Text("select Image")),
          Center(
            child: Container(
              height: 200,
              child: GridView.builder(
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                 itemBuilder: (context, index) {
                return 
               
                
                
                 Container(
                     width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black, width: 1.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.file(
                                          selectedImage!,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                  );
              },),
            ),
          ),
        ],
      )
    );
  }
}