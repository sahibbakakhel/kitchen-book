
import 'package:flutter/material.dart';
import 'package:learning_app/color/colors.dart';

class PageViewList1 extends StatefulWidget {
  const PageViewList1({super.key});

  @override
  State<PageViewList1> createState() => _PageViewList1State();
}

class _PageViewList1State extends State<PageViewList1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            Container(
              color: redColor,
              child: Center(child: Text('Page 1',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: redAccent,
              child: Center(child: Text('Page 2',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: liverColor,
              child: Center(child: Text('Page 3',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: greyColor,
              child: Center(child: Text('Page 4',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: yellowColor,
              child: Center(child: Text('Page 5',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: yellowAccent,
              child: Center(child: Text('Page 6',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: purpleColor,
              child: Center(child: Text('Page 7',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: purpleAccent,
              child: Center(child: Text('Page 8',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: redAccent,
              child: Center(child: Text('Page 9',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: blueColor,
              child: Center(child: Text('Page 10',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: blueAccent,
              child: Center(child: Text('Page 11',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: greenColor,
              child: Center(child: Text('Page 12',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: greenLight,
              child: Center(child: Text('Page 13',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: greenLightAccent,
              child: Center(child: Text('Page 14',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: pinkColor,
              child: Center(child: Text('Page 15',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: brownColor,
              child: Center(child: Text('Page 16',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: orangeColor,
              child: Center(child: Text('Page 17',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: liverColor,
              child: Center(child: Text('Page 18',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
            Container(
              color: blackColor,
              child: Center(child: Text('Page 19',style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),

            
          ],
        )
      ),
    );
  }
}