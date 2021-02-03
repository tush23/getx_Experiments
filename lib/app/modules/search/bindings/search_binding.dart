import 'package:get/get.dart';
import 'package:getx_cli/app/modules/search/controllers/search_controller.dart';
import 'package:getx_cli/app/provider/api_provider.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(
      () => SearchController(),
    );
    Get.lazyPut(() => ApiProvider());
  }
}
