import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TimerTestPage extends StatefulWidget {
  const TimerTestPage({super.key});

  @override
  _TimerWidget createState() => _TimerWidget();
}

class _TimerWidget extends State<TimerTestPage> {
  int index = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  void initTimer(){
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        index++;
      });
    });
  }

  void actionTimer() {
    if(!timer.isActive){
      if (kDebugMode) {
        print('计时器工作开始');
      }
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          index++;
        });
      });
    }else{
      stopTimer();
    }
  }

  void stopTimer() {
    if(timer != null){
      if (kDebugMode) {
        print('计时器已经暂停');
      }
      timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: () { actionTimer();}, child: Text("$index")),
    );
  }
}
