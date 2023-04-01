
import 'package:flutter/material.dart';
import 'package:learning_app/date_picker.dart';
import 'package:learning_app/drawer1.dart';
import 'package:learning_app/drop_down.dart';
import 'package:learning_app/floating_action_botton.dart';
import 'package:learning_app/image_pickup.dart';
import 'package:learning_app/page_view_lists.dart';
import 'package:learning_app/time_picker.dart';



class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Drawer1())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('drawer',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DropDown())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('drop down',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DatePicker())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('date packer',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => TimePicker())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Time picker',style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => ImagePickUp())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('take image from galary in flutter',style: TextStyle(fontSize: 18,color: Colors.white),),),
              ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageViewList1(),));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Page View',style: TextStyle(fontSize: 18,color: Colors.white),),),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => FloatingActionButtonView())));
                },
                child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Floating action botton',style: TextStyle(fontSize: 18,color: Colors.white),),),
              ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}