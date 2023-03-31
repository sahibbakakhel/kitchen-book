import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/home_screen1.dart';
import 'package:learning_app/home_screen2.dart';
import 'package:learning_app/home_screen3.dart';
import 'package:learning_app/home_screen4.dart';


class BottomBar1 extends StatefulWidget {
  const BottomBar1({super.key});

  @override
  State<BottomBar1> createState() => _BottomBar1State();
}

class _BottomBar1State extends State<BottomBar1> {
  int index=0;
  final home1=HomeScreen1();
  final home2=HomeScreen2();
  final home3=HomeScreen3();
  final home4=HomeScreen4();
  Widget showPage=HomeScreen1();

  Widget PageChooser(int Page){
    switch(Page){
      case 0:
      return home1;
      // ignore: dead_code
      break;
      case 1:
      return home2;
      // ignore: dead_code
      break;
      case 2:
      return home3;
      // ignore: dead_code
      break;
      case 3:
      return home4;
      // ignore: dead_code
      break;
      default:
      return Container(
        child: Text('Page no found'),
      );
      // ignore: dead_code
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CurvedNavigationBar(
            color: Colors.orange,
            backgroundColor: Colors.white,
            buttonBackgroundColor: Colors.red,
            animationDuration: Duration(milliseconds: 400),
            index: index,
            onTap: (selectIndex) {
              setState(() {
                showPage=PageChooser(selectIndex);
              });
            },
            items: <Widget> [
              Tab(child: Icon(Icons.check_box_sharp,color: Colors.white,),),
              Tab(child: Icon(Icons.add,color: Colors.white,),),
              Tab(child: Icon(Icons.email,color: Colors.white,),),
              Tab(child: Icon(Icons.rice_bowl,color: Colors.white,),)
            ],
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: showPage,
        ),
      ),
    );
  }
}