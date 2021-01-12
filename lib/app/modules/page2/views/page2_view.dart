import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/page2/controllers/page2_controller.dart';

class Page2View extends GetView<Page2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Page2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
