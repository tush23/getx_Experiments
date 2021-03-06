import 'package:get/get.dart';

import '../controllers/sh_try_controller.dart';

class ShTryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShTryController>(
      () => ShTryController(),
    );
  }
}
