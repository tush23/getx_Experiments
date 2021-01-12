import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/newspage/model/news_model.dart';

class NewsProvider extends GetConnect {
  // String url =
  //     'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1';
  @override
  void onInit() {
    // httpClient.addRequestModifier((request) {
    //   request.headers['apikey'] = '595a430e1e364be4952d4ceba47f6db1';
    //   return request;
    // });
    // httpClient.defaultDecoder = (map) => News.fromJson(map);
    // httpClient.baseUrl = 'https://newsapi.org/v2/top-headlines?country=us';

    // httpClient.baseUrl = 'https://api.covid19api.com';
    // baseUrl = 'https://api.covid19api.com'; // It define baseUrl to
    // Http and websockets if used with no [httpClient] instance

    // It's will attach 'apikey' property on header from all requests
    // httpClient.addRequestModifier((request) {
    //   request.headers['apikey'] = '12345678';
    //   return request;
    // });
  }

//   @override
//   Future<Response<T>> get(String url,
//       {Map<String, String> headers,
//       String contentType,
//       Map<String, dynamic> query,
//       Decoder<T> decoder}) {
// //
//   } // @override
//   // Future<News> getNewsData() async {
//   //   print(' ----->  $url');
//   //   var key = await get(url);
//   //   print('------Override-------');
//   //   print(key.body);
//   //   var data = News.fromJson(json.decode(key.bodyString));
//   //   print('------Override-------');
//
//   //   print(data.toJson());
//   //   return data;
//   //   // var data= News.fromJson(json.decode(key.body));
//   // }
  // _newsDecoder(res) => News.fromJson(res);

  Future<Response<News>> getNewsData() async => get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1',
        // decoder: _newsDecoder);
        // query: {'apiKey':'595a430e1e364be4952d4ceba47f6db1'},
        decoder: (res) {
          return News.fromJson(res);
        },
      );
  // Future<News> getNews() async {
  //   var res = await http.get(
  //     'https://newsapi.org/v2/top-headlines?country=us&apiKey=595a430e1e364be4952d4ceba47f6db1',
  //   );
  //   print('resBody---${res.body}');
  //   var data = News.fromJson(json.decode(res.body));
  //   print(data.toJson());
  //   return data;
  // }

  // Future<Response<News>> getWithConnectNews() async => await get(url);
  // Future<Response> deleteNews(int id) async => await delete('news/$id');
}
