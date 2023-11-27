import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetTestPage extends StatefulWidget{
  const GetTestPage({super.key});

  
  @override
  _GetWidget createState () => _GetWidget();
}

class _GetWidget extends State<GetTestPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(body: SingleChildScrollView(child: Center(child: ElevatedButton(onPressed: ()  {
      // Get.bottomSheet(ClipRRect(borderRadius:BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20)),child:
      // Container(height: 400,color: Colors.white,child: Wrap(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.wb_sunny_outlined),
      //       title: Text("白天模式",style: TextStyle(color: Colors.black)),
      //       onTap: () {
      //         Get.changeTheme(ThemeData.light());
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.wb_sunny),
      //       title: Text("黑夜模式",style: TextStyle(color: Colors.black),),
      //       onTap: () {
      //         Get.changeTheme(ThemeData.dark());
      //       },
      //     )
      //   ],
      // ),),),isScrollControlled: true);

      Get.snackbar("Title", "this is new message");
    },
      child: Text("Show DiaLog"),),),)) ;
  }
}