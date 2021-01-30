import 'package:flutter/material.dart';
import 'package:get/get_connect/connect.dart';
import 'package:getx_cli/app/attemted_provider/base_api_services.dart';
import 'package:getx_cli/app/modules/newspage/model/news_model.dart';

class ApiProvider extends GetConnect with BaseApiServices {
  static const String BASE_URL = 'https://newsapi.org/v2/';

  @override
  void onInit() {
    httpClient.baseUrl = BASE_URL;
    httpClient.timeout = Duration(seconds: 5);
    // httpClient.
    httpClient.addResponseModifier((request, response) {
      request.headers['apikey'] = '595a430e1e364be4952d4ceba47f6db1';
      debugPrint(
        '\n╔══════════════════════════ Response ══════════════════════════\n'
        '╟ REQUEST ║ ${request.method.toUpperCase()}\n'
        '╟ url: ${request.url}\n'
        '╟ Headers: ${request.headers}\n'
        // 'Body: ${request?.bodyBytes?.map((event) => event.asMap().toString()) ?? ''}\n'
        '╟ Status Code: ${response.statusCode}\n'
        '╟ Data: ${response?.bodyString?.toString() ?? ''}'
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
      'top-headlines?country=in&apikey=595a430e1e364be4952d4ceba47f6db1',
      decoder: (data) => News.fromJson(data),
    );
    // print(response.statusCode);
    return response;
  }

  @override
  Future<Response> getEverthing() async {
    final response = await get(
      '& ',
      decoder: (data) => News.fromJson(data),
    );
    return response;
  }
}
