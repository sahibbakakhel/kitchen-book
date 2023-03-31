import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




class ImagePickUp extends StatefulWidget {
  const ImagePickUp({super.key});

  @override
  State<ImagePickUp> createState() => _ImagePickerState();
  
  //getImage({required ImageSource source}) {}
  
  //getImage({required source}) {}
  
  
}

class _ImagePickerState extends State<ImagePickUp> {
  File? file;
 ImagePicker imagePicker=ImagePicker();

 getImage()async
 {
  final image=await imagePicker.pickImage(source: ImageSource.gallery);
  if(image!=null)
  {
    setState(() {
      file=File(image.path);
    });
  }
 }
 getImageFromCamera() async
 {
  final image=await imagePicker.pickImage(source: ImageSource.camera);
  if(image!=null)
  {
    setState(() {
      file=File(image.path);
    });
  }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Image Picker')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,width: 300,
              color: Colors.black,
              child: file==null
              ? Icon(Icons.image,size: 50,)
              :
              Image.file(
                file!, fit: BoxFit.fill,
              )
            ),
            MaterialButton(
              onPressed: (() {
                // getcam();
                getImageFromCamera();
              }),
              child: Text('Take from camara',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: (() {
                // getcam();
                getImage();
              }),
              child: Text('Take from camara',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
            ),
            // CustomButton(
            //   onPressed: ()
            //   {
            //     getImage();

            //   },
            // ),

            // CustomButton(onPressed:(){
            //   getImageFromCamera();
            // })
        
          ],
        ),
      ),
    );
  }
  // getcam() async {
  //   var img=await image.getImage(source: ImageSource.camera);
  //   setState(() {
  //     file = File(img!.path);
  //   });
  // }
  // getgal() async {
  //   var img=await image.getImage(source: ImageSource.gallery);
  //   setState(() {
  //     file = File(img!.path);
  //   });
  // }
// getcam() async{
//   var img = await image.getImage(source: ImageSource.camera);
//   setState(() {
//     file = File(img!.path);
//   });
}

// class CustomButton extends StatelessWidget {
//   Function? onPressed;
//    CustomButton({
//     Key? key,
//    required this.onPressed
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//      onPressed: () =>onPressed ,
//       child: Text('Take from galary',style: TextStyle(color: Colors.white),),
//       color: Colors.blue,
//     );
//   }
// }

//}


