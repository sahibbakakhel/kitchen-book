import 'package:flutter/material.dart';
import 'package:learning_app/rounded_bottom.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          child: RoundedBotton(
             btnName:'Login', Icon: Icon(Icons.lock,),
             callback: (){
              print('Log in');
             }, textStyle: null,
          ),
        ),
      ),
    );
  }
}


