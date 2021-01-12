import 'package:get/get.dart';

import 'package:getx_cli/app/modules/page2/controllers/page2_controller.dart';

class Page2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page2Controller>(
      () => Page2Controller(),
    );
  }
}
