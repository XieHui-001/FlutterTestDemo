import 'package:flutter/material.dart';
import 'package:flutter_test_demo/richtext.dart';
import 'package:flutter_test_demo/slivergridtest.dart';
import 'package:flutter_test_demo/spinnerpage.dart';
import 'package:flutter_test_demo/supportingtext.dart';
import 'package:flutter_test_demo/switchtestpage.dart';
import 'package:flutter_test_demo/timerpickerpage.dart';
import 'package:flutter_test_demo/videopage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bottomdialogpage.dart';
import 'herotest.dart';
import 'loadimg.dart';
import 'viewpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CN'), // 中文简体
        Locale('en', 'US'), // English
       ],
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true,),
      home:  Scaffold(
        appBar: AppBar(title: const Text("Flutter Demo"),centerTitle: true,),
        body: BottomDialogPage(),
      ),
    );
  }
}