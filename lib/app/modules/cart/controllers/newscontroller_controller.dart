import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_cli/app/modules/cart/providers/news_provider.dart';

import '../news_model.dart';

class NewscontrollerController extends GetxController {
  //TODO: Implement NewscontrollerController

  var _newProvider = NewsProvider();
  var data = News().obs;
  final count = 0.obs;
  @override
  void onInit() {}

  @override
  void onReady() {}
  @override
  void onClose() {}
  void increment() => count.value++;

  void getNew() async {
    print('NewsController Called');
    await _newProvider.getNews().then((value) => data.value = value);
  }

  // void getNewData() {
  //   _newProvider.getNewsData().then((value) => data.value = value);
  // }
  void getNewData() {
    _newProvider.getNewsData().then((value) {
      print(value.body.articles[0].title);
      // var k = News.fromJson(json.decode(value.bodyString));
      // print(k.toJson());
    });
  }
}
