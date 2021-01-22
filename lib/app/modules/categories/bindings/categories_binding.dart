import 'package:get/get.dart';

import 'package:getx_cli/app/modules/categories/controllers/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(
      () => CategoriesController(),
    );
  }
}
