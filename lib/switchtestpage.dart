
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchTestPage extends StatefulWidget{



  @override
  _SwitchTestWidget createState () => _SwitchTestWidget();
}



class _SwitchTestWidget extends State<SwitchTestPage>{



  late bool switchValue = false;
  @override
  Widget build(BuildContext context){
    return Center(child: Switch(value: switchValue,onChanged: (value){
      setState(() {
        switchValue = value;
      });
    },activeColor: Colors.white,activeTrackColor:Colors.green,inactiveThumbColor : Colors.grey,activeThumbImage: const AssetImage("images/ic_open.png"),inactiveThumbImage: const AssetImage("images/ic_close.png"),),);
  }
}