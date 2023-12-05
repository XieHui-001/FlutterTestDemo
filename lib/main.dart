import 'package:flutter/material.dart';
import 'package:flutter_test_demo/popbuttonpage.dart';
import 'package:flutter_test_demo/qr_image_test_page.dart';
import 'package:flutter_test_demo/qr_test_page.dart';
import 'package:flutter_test_demo/richtext.dart';
import 'package:flutter_test_demo/slivergridtest.dart';
import 'package:flutter_test_demo/spinnerpage.dart';
import 'package:flutter_test_demo/supportingtext.dart';
import 'package:flutter_test_demo/switchtestpage.dart';
import 'package:flutter_test_demo/tablebartest.dart';
import 'package:flutter_test_demo/timer_test_page.dart';
import 'package:flutter_test_demo/timerpickerpage.dart';
import 'package:flutter_test_demo/videopage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'background_test.dart';
import 'bottomdialogpage.dart';
import 'gettest.dart';
import 'herotest.dart';
import 'kituitest.dart';
import 'loadimg.dart';
import 'loading_animation_page.dart';
import 'viewpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      home:  const Scaffold(
        body: QrImageTestPage(),
      ),
    );
  }
}