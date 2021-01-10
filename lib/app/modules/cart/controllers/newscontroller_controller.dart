import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:getx_cli/app/modules/cart/providers/news_provider.dart';

import '../news_model.dart';

class NewscontrollerController extends GetxController with StateMixin<News> {
  //TODO: Implement NewscontrollerController

  var _newProvider = NewsProvider();
  var data = News().obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getNewData();
  }

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
      print('-----getNewsDataCalled-------');
      change(value.body, status: RxStatus.success());
      print(value.status.code);
      // print(value.body.articles[4].title);
      data.value = value.body;
      if (value.hasError) {
        change(null, status: RxStatus.error(value.statusCode.toString()));
        // throw Exception(value.statusCode);
      }

      // value.hasError
      // value.unauthorized
      // var k = News.fromJson(json.decode(value.bodyString));
      // print(k.toJson());
      // onError: (error) {
      //   print(error);
      //   change(null, status: RxStatus.error(error));
      //   throw Exception(error);
    });
  }
}
