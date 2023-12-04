import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vibration/vibration.dart';


class ScanPage extends StatefulWidget {
  final Function(Barcode? result)? completed;

  const ScanPage({
    Key? key,
    this.completed,
  }) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? _controller;
  late TextEditingController _dataController;

  Future<void> _checkCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      // 如果摄像机权限被拒绝，请求权限
      await Permission.camera.request();
    }
  }

  Future<void> _vibrate() async {
    var isTure = await Vibration.hasVibrator();
    if (isTure != null && isTure ) {
      // 检查设备是否支持震动
      Vibration.vibrate(duration: 200); // 震动200毫秒
    }
  }


  @override
  void initState() {
    super.initState();
    _dataController = TextEditingController();
    _checkCameraPermission();
  }

  @override
  void reassemble() {
    super.reassemble();
    _controller?.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: SafeArea(
              child: CupertinoButton(
                onPressed: () {
                  _controller?.toggleFlash();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  child: Column(
                    children: [
                      Expanded(
                          child: TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: _dataController,
                        decoration: InputDecoration(
                            suffixIcon: _dataController.text.isNotEmpty
                                ? IconButton(
                              icon: const Icon(Icons.clear,color: Colors.white,),
                              onPressed: () {
                                setState(() {
                                  _dataController.clear();
                                });;
                              },
                            )
                                : null,
                            labelText: "扫描内容",
                            labelStyle: const TextStyle(
                                color: Colors.white, fontSize: 18),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10))),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    _controller = controller;
    controller.scannedDataStream.listen((result) {
      if (kDebugMode) {
        print(result.code);
      }
      _vibrate();
      Get.snackbar("二维码","扫描成功",
        snackPosition: SnackPosition.TOP,);
     setState(() {
       _dataController.text = result.code!!;
     });
      // _controller!.stopCamera();
      // Navigator.of(context).pop();
      // if (widget.completed != null) {
      //   widget.completed!(result);
      // }
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
}
