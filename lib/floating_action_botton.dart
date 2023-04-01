



import 'package:flutter/material.dart';
import 'package:learning_app/color/colors.dart';


class FloatingActionButtonView extends StatefulWidget {
  const FloatingActionButtonView({super.key});

  @override
  State<FloatingActionButtonView> createState() => _FloatingActionButtonViewState();
}

class _FloatingActionButtonViewState extends State<FloatingActionButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Floating Action Button')),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('floating action button'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        // label: Row(
        //   children: [
        //     Icon(Icons.add),
        //     Text('Add'),
        //   ],
        // ),
        backgroundColor: purpleColor,
        // mini: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(width: 2,color: redColor)
        ),
        elevation: 5,
        highlightElevation: 50,
        // shape: CircleBorder(),
      ),
      
    );
  }
}