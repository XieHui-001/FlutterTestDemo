import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_demo/utils/aesutils.dart';
import 'package:get/get.dart';

class PopButtonPage extends StatefulWidget{
  @override
  _PopButtonWidget createState () => _PopButtonWidget();
}

class _PopButtonWidget extends State<PopButtonPage>{
  RxString testRxString = RxString("Option 1");

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu Example'),
        actions: [
      PopupMenuButton<String>(
      onSelected: (String result) {
        testRxString = RxString('11111');
        print('Selected: $result');
    },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
         PopupMenuItem<String>(
          value: 'option_1',
          child: Obx(() => Text("$testRxString")),
        ),
        const PopupMenuItem<String>(
          value: 'option_2',
          child: Text('Option 2'),
        ),
        const PopupMenuItem<String>(
          value: 'option_3',
          child: Text('Option 3'),
        ),
      ],
    )
        ],
      ),
      body: Center(
        child: ElevatedButton(child: const Text('Press the Popup Menu button in the AppBar.'),onPressed: (){
          print("加密结果:${AesUtils.encrypt("sss")}");
        },),
      ),
    );
  }

}