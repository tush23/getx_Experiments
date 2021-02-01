import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Handler {
  static final Handler _singleton = Handler._internal();

  factory Handler() {
    return _singleton;
  }

  Handler._internal();
  // Handler({this.errorString, this.retryPressed});
  Widget get loading => Center(child: CircularProgressIndicator());
  Future<Dialog> error(
          {@required String errorString, @required Function retryPressed}) =>
      Get.defaultDialog(
          confirm: FlatButton(
            child: Text('Retry'),
            onPressed: retryPressed,
          ),
          buttonColor: Colors.amber,
          onConfirm: () {
            print('REtry pressed');
            retryPressed();
          },
          content: Text(errorString),
          title: 'Error');
}
