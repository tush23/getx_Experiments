import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Handler {
  static final Handler _singleton = Handler._internal();

  factory Handler() {
    return _singleton;
  }

  Handler._internal();
  // Handler({this.errorString, this.retryPressed});
  Future<AlertDialog> loading() => showDialog(
      child: Center(
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              width: 60,
              height: 60,
              child: CircularProgressIndicator())),
      context: Get.context);

  // Get.dialog(Center(child: CircularProgressIndicator()));
  // Get.defaultDialog(
  //     content: Center(child: CircularProgressIndicator()), title: 'Loading');

  Widget error(
          {@required String errorString, @required Function retryPressed}) =>
      Center(
        child: Column(
          children: [
            Text("------$errorString"),
            FlatButton(
              color: Colors.amber,
              child: Text('retry'),
              onPressed: retryPressed,
            )
          ],
        ),
      );
}
