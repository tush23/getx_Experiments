import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/cart/news_model.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends GetConnect {
  var _decoder = (map) => News.fromJson(map);

  String url =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1';
  @override
  void onInit() {
    httpClient.addRequestModifier((request) {
      request.headers['apikey'] = '595a430e1e364be4952d4ceba47f6db1';
      return request;
    });
    httpClient.defaultDecoder = (map) => News.fromJson(map);
    httpClient.baseUrl = 'https://newsapi.org/v2/top-headlines?country=us';
  }

  // @override
  // Future<News> getNewsData() async {
  //   print(' ----->  $url');
  //   var key = await get(url);
  //   print('------Override-------');
  //   print(key.body);
  //   var data = News.fromJson(json.decode(key.bodyString));
  //   print('------Override-------');

  //   print(data.toJson());
  //   return data;
  //   // var data= News.fromJson(json.decode(key.body));
  // }
  _newsDecoder(res) => News.fromJson(res);

  Future<Response<News>> getNewsData() async => get(url,
          // decoder: _newsDecoder);
          decoder: (res) {
        return News.fromJson(res);
      });
  Future<dynamic> getNews() async {
    var res = await http.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1',
    );
    print(res.body);
    var data = News.fromJson(json.decode(res.body));
    print(data.toJson());
    return data;
  }

  Future<Response<News>> getWithConnectNews() async => await get(url);
  Future<Response> deleteNews(int id) async => await delete('news/$id');
}
