import 'package:json_annotation/json_annotation.dart';

import '../user_data.dart';

@JsonSerializable()
class LoginResponse {
  bool verified;
  UserData userData;
  String message;
  bool status;

  LoginResponse({this.verified, this.userData, this.message, this.status});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
