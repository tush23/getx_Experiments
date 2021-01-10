import 'package:get/get.dart';

import 'package:getx_cli/app/modules/cart/news_model.dart';

class NewsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => News.fromJson(map);
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<News>> getNews(int id) async => await get('news/$id');
  Future<Response<News>> postNews(News news) async => await post('news', news);
  Future<Response> deleteNews(int id) async => await delete('news/$id');
}
