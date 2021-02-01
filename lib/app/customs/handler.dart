import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Handler {
  static final Handler _singleton = Handler._internal();

  factory Handler() {
    return _singleton;
  }

  Handler._internal();
  // Handler({this.errorString, this.retryPressed});
  Future<Dialog> loading() =>
  
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
