
// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class RoundedBotton extends StatefulWidget {
  const RoundedBotton({super.key, required String btnName, required Icon Icon, required Null Function() callback, required textStyle});

  @override
  State<RoundedBotton> createState() => _RoundedBottonState(btnName: 'Login');
}
class _RoundedBottonState extends State<RoundedBotton> {

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  _RoundedBottonState({
    required this.btnName,
    this.icon, 
    this.bgColor, 
    this.textStyle, 
    this.callback
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed:() {
                callback!();
              }, child:icon!=null? Row(
                children: [
                  icon!,
                  Text(btnName, style: textStyle,),
                ],
              ):Text(btnName, style: textStyle,),
              style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            )
          ],
        )
      ),
    );
  }
}