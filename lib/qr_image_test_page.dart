import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrImageTestPage extends StatefulWidget {
  const QrImageTestPage({super.key});

  @override
  _QrImageTestWidget createState() => _QrImageTestWidget();
}

class _QrImageTestWidget extends State<QrImageTestPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义二维码生成器"),
      ),
      body: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: QrImageView(
          data: 'https://kr.ttdhh.top/admin.php?p=/ContentSort/index',
          version: QrVersions.auto,
          padding: EdgeInsets.symmetric(vertical: 50,horizontal: 50),
          size: 200,
          gapless: false,
          //无间隙二维码
          //生成失败后的widget显示
          errorStateBuilder: (cxt, err) {
            return Container(
              child: Center(
                child: Text(
                  "Uh oh! Something went wrong...",
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
