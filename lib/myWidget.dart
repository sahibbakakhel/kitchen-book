import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_app/custom_botton/customButton2.dart';

import 'custom_botton/customButton.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
                  CustomButton(
                    onTap: ()
                    {
                      log('sahib');
                    },
                  ),
                  CustomButton2(
                    height: 70,width: 300,
                  )
            ]
          ),
        ),
      ),
    );
  }
}