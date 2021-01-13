import 'package:get/get.dart';
import 'package:getx_cli/app/modules/newspage/model/sources_model.dart';

class SourcesProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Sources.fromJson(map);
    // httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<Sources>> getSources(int id) async =>
      await get('sources/$id');
}
