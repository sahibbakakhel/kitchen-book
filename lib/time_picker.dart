

import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  // create time of day variable
  TimeOfDay _timeOfDay= TimeOfDay(hour: 8, minute: 30);
  // show time picker method
  void _showTimePicker(){
    showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay=value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //choose the time
              Text(_timeOfDay.format(context).toString(),style: TextStyle(fontSize: 30),),
              //button
              Padding(
                padding: const EdgeInsets.all(20),
                child: MaterialButton(onPressed: _showTimePicker,
                child: Text('PICK TIME',style: TextStyle(fontSize: 30),),
                color: Colors.blue,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}