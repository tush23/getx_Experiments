import 'package:flutter/material.dart';
import 'package:get/get_connect/connect.dart';
import 'package:getx_cli/app/provider/base_api_services.dart';
import 'package:getx_cli/app/modules/newspage/model/news/news.dart';

class ApiProvider extends GetConnect with BaseApiServices {
  static const String _BASE_URL = 'https://newsapi.org/v2/';
  static const String _API_KEY = '59a430e1e364be4952d4ceba47f6db1';

  @override
  void onInit() {
    httpClient.baseUrl = _BASE_URL;
    httpClient.timeout = Duration(seconds: 5);
    // httpClient.
    httpClient.addResponseModifier((request, response) {
      // request.headers['apikey'] = '595a430e1e364be4952d4ceba47f6db1';
      debugPrint(
        '\n╔══════════════════════════ Response ══════════════════════════\n'
        '╟ REQUEST ║ ${request.method.toUpperCase()}\n'
        '╟ url: ${request.url}\n'
        '╟ Headers: ${request.headers}\n'
        // 'Body: ${request?.bodyBytes?.map((event) => event.asMap().toString()) ?? ''}\n'
        '╟ Status Code: ${response.statusCode}\n'
        // '╟ Data: ${response?.bodyString?.toString() ?? ''}'
        '\n╚══════════════════════════ Response ══════════════════════════\n',
        wrapWidth: 1024,
      );

      return response;
    });
  }

  @override
  Future<Response> login(Map<String, String> loginMap) async {
    final response = await get(
      '',
      decoder: (data) => News.fromJson(data),
    );
    return response;
  }

  @override
  Future<Response> getNews() async {
    final response = await get(
      'top-headlines?country=in&apikey=$_API_KEY',
      decoder: (data) => News.fromJson(data),
    );
    // print(response.statusCode);
    return response;
  }

  @override
  Future<Response> getEverthing(String s) async {
    final response = await get(
      'everything?q=$s&apiKey=$_API_KEY',
      decoder: (data) => News.fromJson(data),
    );
    return response;
  }
}
