import 'package:get/get.dart';
import 'package:getx_cli/app/attemted_provider/api_provider.dart';
import 'package:getx_cli/app/modules/newspage/controllers/newpagecon_with_api_provider.dart';

import 'package:getx_cli/app/modules/newspage/controllers/newspage_controller.dart';

class NewspageBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<NewspageController>(
    //   () => NewspageController(),
    // );
    Get.lazyPut<ApiProvider>(() => ApiProvider());
    Get.lazyPut<NewsControllerWithApiProviders>(
        () => NewsControllerWithApiProviders());
  }
}
