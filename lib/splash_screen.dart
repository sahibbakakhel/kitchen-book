
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_app/bottom_bar1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => BottomBar1())));
    },
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 720,
              child: Image(
              fit: BoxFit.cover,
              image: AssetImage('images/sahib6.jpg')),
            ),
          ],
        )
      ),
    );
  }
}