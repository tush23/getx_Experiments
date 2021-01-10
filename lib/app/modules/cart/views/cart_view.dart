import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/cart/controllers/cart_controller.dart';
import 'package:getx_cli/app/modules/cart/controllers/newscontroller_controller.dart';

class CartView extends GetView<NewscontrollerController> {
  var _newController = NewscontrollerController();
  @override
  Widget build(BuildContext context) {
    // _newController.getNew();
    _newController.getNewData();
    return Scaffold(
      appBar: AppBar(
        title: Text('CartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text(
              _newController.data.value.articles[0].author.toString(),
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
