
import 'package:get/get.dart';
import 'package:getx_cli/app/modules/newspage/model/news_model.dart';

class NewsProvider extends GetConnect {
  String url =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1';
  @override
  void onInit() {
    
    httpClient.baseUrl = 'https://newsapi.org/v2/top-headlines?country=us';
  }
 Future<Response<News>> getNewsData() async => get(
        '&apiKey=595a430e1e364be4952d4ceba47f6db1',
        // decoder: _newsDecoder);
        // query: {'apiKey':'595a430e1e364be4952d4ceba47f6db1'},
        decoder: (res) {
          return News.fromJson(res);
        },
      );
      //*
  // Future<News> getNews() async {
  //   var res = await http.get(
  //     'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1',
  //   );
  //   print('resBody---${res.body}');
  //   var data = News.fromJson(json.decode(res.body));
  //   print(data.toJson());
  //   return data;
  // }
}
