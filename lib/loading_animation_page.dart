import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_demo/utils/loading_utils.dart';

class LoadingAnimationPag extends StatelessWidget{
  const LoadingAnimationPag({super.key});


  Future<void> initSendRes(BuildContext context) async{
      Future.delayed(const Duration(seconds: 5),(){
        LoadingUtils.hideLoading(context);
      });
  }


  @override
  Widget build(BuildContext context){
    return Center(child: ElevatedButton(onPressed: (){
      LoadingUtils.showLoading(context, "Loading . . .");
      initSendRes(context);
    },child: Text("Text"),),);
  }
}

