import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  // create date time variable
  DateTime _dateTime= DateTime.now();
  // show date time picker
  void _showDataPicker() {
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(200), 
      lastDate: DateTime(2025)
      ).then((value) {
        setState(() {
          _dateTime = value!;
        });
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // display choosen date
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_dateTime.day.toString(),style: TextStyle(fontSize: 20),),
                  SizedBox(width: 5,),
                  Text(_dateTime.month.toString(),style: TextStyle(fontSize: 20),),
                  SizedBox(width: 5,),
                  Text(_dateTime.year.toString(),style: TextStyle(fontSize: 20),),
                ],
              ),
              // button
              MaterialButton(
                onPressed: _showDataPicker,
                color: Colors.purple,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Choose Data',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}