import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_cli/app/modules/shTry/views/sh_try_item_view.dart';

import '../controllers/sh_try_controller.dart';

class ShTryView extends GetView<ShTryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShTryView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  return ShTryItemView(i);
                },
                itemCount: controller.count.value,
                // itemCount: controller.shCtrList.length,

              ),
            ),
            TextButton(onPressed: (){
              controller.onAddPress();
            }, child: Text('Save Everything'),),
            TextButton(onPressed: (){
              controller.increment();
            }, child: Text('Add Items'),),
            TextButton(onPressed: (){
              controller.decrement();
            }, child: Text('Remove Items Items'),)

          ],
        ),
      ),
    );
  }
}
