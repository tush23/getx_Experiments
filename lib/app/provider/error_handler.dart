
import 'package:get/get_connect/http/src/response/response.dart';

import 'error_exceptions.dart';

class ApiErrorHandler {


  String returnErrorString(Response response) {
    switch (response.statusCode) {
      case 400:
        throw BadRequestException(response.body.toString());
        return 'Invalid Request';
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
        return 'Unauthorised';
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response
                .statusCode}');
        return 'Error occured while Communication with Server with StatusCode : ${response
            .statusCode}';
    }
  }
}