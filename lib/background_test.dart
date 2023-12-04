import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundTestPage extends StatelessWidget {
  const BackgroundTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Container(
          padding: EdgeInsets.all(2),
          height: 50,
          child: Container(
            alignment: Alignment.center,
            child: Text("描述"),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [Colors.blue, Colors.deepOrange, Colors.green,Colors.orange])),
        ),
      ),
    );
  }
}
