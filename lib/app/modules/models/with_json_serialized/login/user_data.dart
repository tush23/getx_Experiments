import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserData{
  String name;

  UserData({this.name});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}