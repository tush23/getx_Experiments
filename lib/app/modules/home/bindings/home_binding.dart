import 'package:get/get.dart';
import 'package:getx_cli/app/modules/cart/controllers/newscontroller_controller.dart';

import 'package:getx_cli/app/modules/home/controllers/home_controller.dart';
import 'package:getx_cli/app/modules/home/controllers/storecontroller_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewscontrollerController>(
      () => NewscontrollerController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
