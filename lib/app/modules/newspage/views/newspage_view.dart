import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/newspage/controllers/newspage_controller.dart';

class NewsPageView extends GetView<NewspageController> {
  @override
  Widget build(BuildContext context) {
  
    controller.getNewData();
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      
        child: controller.obx(
            (state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List<Widget>.generate(
                      controller.data.value.articles.length,
                      (index) => articelCard(index)),
                ),
            onError: (error) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Somthing went wrong $error'),
                      FlatButton(
                        onPressed: controller.getNewData,
                        child: Text('Retry'),
                        color: Colors.amber,
                      )
                    ],
                  ),
                )),
        // child: Obx(() => Text(
        //       _newController.data.value.articles[0].author.toString(),
        //       style: TextStyle(fontSize: 20),
        //     )),
      ),
    );
  }

  Widget articelCard(int i) {
    return Column(
      children: [
        Image.network(controller.data.value.articles[i].urlToImage ??
            'https://image.shutterstock.com/image-vector/default-ui-image-placeholder-wireframes-260nw-1037719192.jpg'),
        Text(controller.data.value.articles[i].title ?? '',
            style: TextStyle(fontSize: 20)),
        Text(
          controller.data.value.articles[i].description ?? '',
          style: TextStyle(fontSize: 17),
        ),
        Text(controller.data.value.articles[i].author ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
