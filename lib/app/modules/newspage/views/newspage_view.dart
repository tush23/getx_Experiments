import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/newspage/controllers/newspage_controller.dart';

class NewsPageView extends GetView<NewspageController> {
  @override
  Widget build(BuildContext context) {
    // _newController.getNew();
    // _newController.getNewData();
    // controller.getNewData();
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
      ),
      body: Center(
        child: controller.obx(
            (state) => Column(
                  children: [
                    Image.network(controller.data.value.articles[0].urlToImage),
                    Text(controller.data.value.articles[0].title ?? '',
                        style: TextStyle(fontSize: 24)),
                    Text(
                      controller.data.value.articles[0].description ?? '',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(controller.data.value.articles[0].author ?? '',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
            onError: (error) => Text('Somthing went wrong $error')),
        // child: Obx(() => Text(
        //       _newController.data.value.articles[0].author.toString(),
        //       style: TextStyle(fontSize: 20),
        //     )),
      ),
    );
  }
}