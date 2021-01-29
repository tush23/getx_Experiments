import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_cli/app/attemted_provider/api_provider.dart';

class NewsControllerWithApiProviders extends GetxController with StateMixin {
  final ApiProvider _apiProvider = Get.find();

  @override
  void onReady() {
    print('onReady called');
    getNews();
    super.onReady();
  }

  void getNews() {
    print('---------loginCalled');
    _apiProvider.getNews().then((value) {
      print('-------$value');
      change(null, status: RxStatus.loading());
      if (value.hasError) change(value.statusText, status: RxStatus.error());
      if (value.statusCode == 200)
        change(value.body, status: RxStatus.success());
    });
  }
}
