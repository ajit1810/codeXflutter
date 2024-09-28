import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallerypicker_example/multiImg.dart';
import 'package:image_picker/image_picker.dart';

class GalleryImgPic extends StatefulWidget {
  const GalleryImgPic({super.key});

  @override
  State<GalleryImgPic> createState() => _GalleryImgPicState();
}

class _GalleryImgPicState extends State<GalleryImgPic> {


  
     final ImagePicker _picker = ImagePicker();
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
          "Image Picker example",
         
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  selectedImage==null
                  ? 
                  GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: Center(
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                  :Center(
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
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
                        ),
                      ),
                    ),
          ),
          Container(
            
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton(
              onPressed: (){
                if (selectedImage==null && selectedImage!=null) {
                  return ;
                }
                getImage();
                setState(() {
                  
                });
              }, 
              child: Text("Change")),
          ),
           Container(
            
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton(
              onPressed: (){
                if (selectedImage!= null) {
                   setState(() {
                  
                });
                  return selectedImage=null;
                  
                }
               
              
              }, 
              child: Text("Delete")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MultiImgPiker(),));
        },
        child: Icon(Icons.forward),
        ),
    );
  }
}