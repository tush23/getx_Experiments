import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:getx_cli/app/customs/handler.dart';
import 'package:getx_cli/app/modules/models/with_json_serialized/news.dart';
import 'package:getx_cli/app/provider/base_api_services.dart';

class ApiProvider extends GetConnect with BaseApiServices {
  static const String _BASE_URL = 'https://newsapi.org/v2/';
  static const String _API_KEY = '595a430e1e364be4952d4ceba47f6db1';

  // static final ApiProvider _singleton = ApiProvider._internal();
  // factory ApiProvider() {
  //   return _singleton;
  // }
  // ApiProvider._internal();

  RxString _connectionStatus=''.obs;
  final Connectivity _connectivity = new Connectivity();

  //For subscription to the ConnectivityResult stream
  StreamSubscription<ConnectivityResult> _connectionSubscription;

  String get connectionStatus =>_connectionStatus.value;

  @override
  void onInit() {
    httpClient.baseUrl = _BASE_URL;
    httpClient.timeout = Duration(seconds: 5);
    // httpClient.
    httpClient.addResponseModifier((request, response) {
      request.headers['x-api-key'] = '595a430e1e364be4952d4ceba47f6db1';
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
    initConnectivity();
    _connectionSubscription =
        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
          _connectionStatus.value = result.toString();
          if(_connectionStatus.value == "ConnectivityResult.mobile" || _connectionStatus.value == "ConnectivityResult.wifi") {
            Handler().getInternetSnackBar();
          } else {
            Handler().noInternetSnackBar();
          }
          print("Initstate : $_connectionStatus");
        });

  }

  Future<Null> initConnectivity() async {
    String connectionStatus;

    try {
      connectionStatus = (await _connectivity.checkConnectivity()).toString();
    } on PlatformException catch (e) {
      print(e.toString());
      connectionStatus = "Internet connectivity failed";
    }

    _connectionStatus.value = connectionStatus;
    print("InitConnectivity : $_connectionStatus");
    // ignore: unrelated_type_equality_checks
    if(_connectionStatus.value == "ConnectivityResult.mobile" || _connectionStatus.value == "ConnectivityResult.wifi") {
      // getData();
      // Get.snackbar('No InterNet', "You are not connected to internet");
    } else {
      print('No Internet');
      Get.snackbar('No InterNet', "You are not connected to internet",snackPosition: SnackPosition.BOTTOM);
    }
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
      // headers: {
      //   "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      //   "Access-Control-Allow-Credentials": 'true', // Required for cookies, authorization headers with HTTPS
      //   "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      //   "Access-Control-Allow-Methods": "POST, OPTIONS,GET"
      // },
      decoder: (data) => News.fromJson(data),
    );
    return response;
  }
}
