// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    json['verified'] as bool,
    json['userData'] == null
        ? null
        : UserData.fromJson(json['userData'] as Map<String, dynamic>),
    json['message'] as String,
    json['status'] as bool,
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'verified': instance.verified,
      'userData': instance.userData,
      'message': instance.message,
      'status': instance.status,
    };
