import 'package:get/get_connect/connect.dart';
import 'package:getx_cli/app/modules/models/with_json_serialized/news.dart';

abstract class BaseApiServices  {
 
    Future<Response> login(Map<String, String> loginMap);
    Future<dynamic> getNews();
    Future<Response> getEverthing(String s);
}
