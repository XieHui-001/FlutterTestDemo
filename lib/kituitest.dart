import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KitUiTestPage extends StatefulWidget{
  @override
  _KitUiWidget createState () => _KitUiWidget();
}

class _KitUiWidget extends State<KitUiTestPage>{
  @override
  Widget build(BuildContext context){
    return IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook));
  }
}