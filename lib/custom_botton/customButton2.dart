

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:learning_app/color/colors.dart';


// ignore: must_be_immutable
class CustomButton2 extends StatefulWidget {
 CustomButton2({super.key,
  this.height,
  this.width,
  this.onTap,
  });
  double?height;
  double?width;
  Function()?onTap;

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap??(){},
      child : Container(
        height: widget.height??50,
        width: widget.width??150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: yellowColor,
          color: Color(0xFF795548)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sahib',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(width: 20,),
              Icon(Icons.email,color: Colors.white,size: 30,),
            ],
          ),
        ),
      ),
    );
  }
}