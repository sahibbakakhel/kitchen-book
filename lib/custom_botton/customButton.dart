

// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:learning_app/color/colors.dart';

class CustomButton extends StatefulWidget {
   CustomButton({super.key,
   this.height,
   this.width,
   this.onTap,
   });
   double?height;
   double?width;
   Function()?onTap;


  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => widget.onTap??(){},
      
      child: Container(
        height:widget.height??40,
        width: widget.width??100,
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20),)),
      ),
    );
  }
}