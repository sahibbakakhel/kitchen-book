

import 'package:flutter/material.dart';
import 'package:learning_app/myWidget.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => MyWidget())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Costom Widget',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
              ),
              SizedBox(height: 20,),
              Container(
              height: 50, width: 340,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: Text('bottom bar',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('tab bar',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),

              
           
          ],
        ),
      ),
    );
  }
}