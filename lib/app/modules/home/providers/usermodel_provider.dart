import 'package:get/get.dart';
import 'package:getx_cli/app/modules/home/usermodel_model.dart';

class UsermodelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Usermodel.fromJson(map);
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<Usermodel>> getUsermodel(int id) async =>
      await get('usermodel/$id');
  Future<Response<Usermodel>> postUsermodel(Usermodel usermodel) async =>
      await post('usermodel', usermodel);
  Future<Response> deleteUsermodel(int id) async =>
      await delete('usermodel/$id');
}
