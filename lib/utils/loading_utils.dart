import 'package:flutter/material.dart';

class LoadingUtils {
  static void showLoading(BuildContext context, String loadingText) {

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              child: Center(
                  child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                width: 100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        loadingText,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )),
              onWillPop: () async => false);
        });
  }

  static void hideLoading(BuildContext context) {
    Navigator.of(context).pop();
  }
}
