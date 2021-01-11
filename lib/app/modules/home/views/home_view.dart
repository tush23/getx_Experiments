import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/home/controllers/home_controller.dart';
import 'package:getx_cli/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            FlatButton(
                onPressed: () => Get.toNamed(Routes.CART),
                child: Text("Cart GOTOT"))
          ],
        ),
      ),
    );
  }
}
