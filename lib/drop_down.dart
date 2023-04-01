

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> items=<String>[
    'red',
    'green',
    'blue',
    'white',
    'black',
  ];
  String dropdownValue ='red';

  // List DropDownListData = [
  //   {"title":"BCA","value":"1"},
  //   {"title":"MCA","value":"2"},
  //   {"title":"B.tech","value":"3"},
  //   {"title":"M.tech","value":"4"}
  // ];
  // String defaultValue ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Drop Down'),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButton<String>(
          onChanged: (String? newValue){
            setState(() {
              dropdownValue=newValue!;
            });
          },
          value: dropdownValue,
          items: items.map<DropdownMenuItem<String>>(
            (String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }
          ).toList(),
        )
      ),
      // body: ListView(
      //   children: [
      //     DropdownButton(
      //       value: defaultValue,
      //       isExpanded: true,
      //       menuMaxHeight: 350,
      //       items: [
      //         DropdownMenuItem(
      //           child: Text('Select curser'),
      //           value: "",
      //         ),
      //       ], 
      //       onChanged: ((value) {
      //         print("Selected Value $value");
      //       }),
      //     ),
      //   ],
      // ),
    );
  }
}

