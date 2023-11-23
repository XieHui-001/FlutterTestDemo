import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportingTextPage extends StatefulWidget{

  @override
  _SupportingTextWidget createState () => _SupportingTextWidget();
}

class _SupportingTextWidget extends State<SupportingTextPage>{
  late  TextEditingController _controller;


  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Enter your text',
            hintStyle: TextStyle(color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: "Email",
            prefixIcon: Icon(Icons.search_rounded),
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                _controller.clear();
              });
            }, icon:  Icon(Icons.clear)),
            labelStyle: TextStyle(fontSize: 20),
            enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.black),
                borderRadius: BorderRadius.circular(10)
            ),
            focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.purple,style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10)
            )
          ),
        ),
      ),
    );
  }
}