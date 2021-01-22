import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/categories/controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategoriesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CategoriesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
