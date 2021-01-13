import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/new_page/controllers/new_page_controller.dart';

class NewPageView extends GetView<NewPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NewPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
