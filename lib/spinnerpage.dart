import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpinnerPage extends StatefulWidget{

  @override
  _SpinnerWidget createState () => _SpinnerWidget();
}

class _SpinnerWidget extends State<SpinnerPage>{

  String selectedValue = 'Option 1';
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      isExpanded: true,
      iconSize: 30,
      isDense: false,
      iconEnabledColor: Colors.red,
      iconDisabledColor: Colors.green,
      borderRadius: BorderRadius.circular(20),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}