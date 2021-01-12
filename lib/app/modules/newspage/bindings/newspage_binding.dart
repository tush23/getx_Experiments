import 'package:get/get.dart';

import 'package:getx_cli/app/modules/newspage/controllers/newspage_controller.dart';

class NewspageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewspageController>(
      () => NewspageController(),
    );
  }
}
