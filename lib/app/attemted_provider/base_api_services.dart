import 'package:get/get_connect/connect.dart';

abstract class BaseApiServices  {
 
    Future<Response> login(Map<String, String> loginMap);
    Future<Response> getNews();

}
