import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Handler {

  // Handler({this.errorString, this.retryPressed});
  Widget get loading => Center(child: CircularProgressIndicator());
  Future<Dialog> error({String errorString, Function retryPressed}) =>
      Get.defaultDialog(
          confirm: Text('Retry'),
          onConfirm: retryPressed,
          content: Text(errorString),
          title: 'Error');
  // Center(
  //         child: Container(
  //       color: Colors.white,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Text(errorString),
  //           FlatButton(
  //             onPressed: retryPressed,
  //             child: Text(
  //               'Retry',
  //               style: TextStyle(color: Colors.white),
  //             ),
  //           )
  //         ],
  //       ),
  //     ));
}
