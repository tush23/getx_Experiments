import 'package:get/get.dart';
import 'package:getx_cli/app/modules/models/with_json_serialized/news.dart';
import 'package:getx_cli/app/provider/api_provider.dart';


class SearchController extends GetxController with StateMixin<News> {
  final ApiProvider _apiProvider = Get.find();

  var searchedText = ''.obs;

  @override
  void onReady() {
    print('onReady called');
    getEverything('');
    super.onReady();
  }

  void getEverything(String q) {
    searchedText.value = q;
    if (q.isNotEmpty) {
      print('Get everything called==>$q');
      _apiProvider.getEverthing(q).then((value) {
        change(null, status: RxStatus.loading());
        if (value.hasError)
          change(null, status: RxStatus.error(value.body.message));
        if (value.statusCode == 200)
          change(value.body, status: RxStatus.success());
      });
    } else
      change(null, status: RxStatus.error('Nothing to search'));
  }
}
