import 'package:get/get.dart';

import 'package:getx_cli/app/modules/new_page/controllers/new_page_controller.dart';

class NewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPageController>(
      () => NewPageController(),
    );
  }
}
