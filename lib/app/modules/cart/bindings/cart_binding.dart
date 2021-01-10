import 'package:get/get.dart';

import 'package:getx_cli/app/modules/cart/controllers/cart_controller.dart';
import 'package:getx_cli/app/modules/cart/controllers/newscontroller_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewscontrollerController>(
      () => NewscontrollerController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}
