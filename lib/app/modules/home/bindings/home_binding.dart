import 'package:get/get.dart';
import 'package:getx_cli/app/modules/home/controllers/home_controller.dart';
import 'package:getx_cli/app/provider/api_provider.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    print('dependencies--injected Home');
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ApiProvider>(() => ApiProvider());
    
  }
}
