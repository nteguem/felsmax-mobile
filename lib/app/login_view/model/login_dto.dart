library login_dto;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:feslmax_app/serializers/serializers.dart';

part 'login_dto.g.dart';

abstract class LoginDto implements Built<LoginDto, LoginDtoBuilder> {
  LoginDto._();

  factory LoginDto([updates(LoginDtoBuilder b)]) = _$LoginDto;

  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'password')
  String get password;
  String toJson() {
    return json.encode(serializers.serializeWith(LoginDto.serializer, this));
  }

  static LoginDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginDto.serializer, json.decode(jsonString));
  }

  static Serializer<LoginDto> get serializer => _$loginDtoSerializer;
}

abstract class LoginSummaryDto
    implements Built<LoginSummaryDto, LoginSummaryDtoBuilder> {
  LoginSummaryDto._();

  factory LoginSummaryDto([updates(LoginSummaryDtoBuilder b)]) =
      _$LoginSummaryDto;

  @BuiltValueField(wireName: 'statut')
  bool get status;
  @BuiltValueField(wireName: 'response')
  ResponseLogin get response;
  String toJson() {
    return json
        .encode(serializers.serializeWith(LoginSummaryDto.serializer, this));
  }

  static LoginSummaryDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginSummaryDto.serializer, json.decode(jsonString));
  }

  static Serializer<LoginSummaryDto> get serializer =>
      _$loginSummaryDtoSerializer;
}

abstract class ResponseLogin
    implements Built<ResponseLogin, ResponseLoginBuilder> {
  ResponseLogin._();

  factory ResponseLogin([updates(ResponseLoginBuilder b)]) = _$ResponseLogin;

  @BuiltValueField(wireName: 'access_token')
  String get accessToken;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'token_type')
  String get tokenType;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ResponseLogin.serializer, this));
  }

  static ResponseLogin fromJson(String jsonString) {
    return serializers.deserializeWith(
        ResponseLogin.serializer, json.decode(jsonString));
  }

  static Serializer<ResponseLogin> get serializer => _$responseLoginSerializer;
}
