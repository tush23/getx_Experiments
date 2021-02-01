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
  Future<Dialog> error({String errorString, Function retryPressed}) =>
      Get.defaultDialog(
          confirm: Text('Retry'),
          onConfirm: retryPressed,
          content: Text(errorString),
          title: 'Error');
 
}
