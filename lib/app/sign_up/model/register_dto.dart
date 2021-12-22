library register_dto;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:feslmax_app/serializers/serializers.dart';

part 'register_dto.g.dart';

abstract class RegisterDto implements Built<RegisterDto, RegisterDtoBuilder> {
  RegisterDto._();

  factory RegisterDto([updates(RegisterDtoBuilder b)]) = _$RegisterDto;

  @BuiltValueField(wireName: 'name')
  @nullable
  String get name;
  @BuiltValueField(wireName: 'surname')
  @nullable
  String get surname;
  @BuiltValueField(wireName: 'phone')
  @nullable
  String get phone;
  @BuiltValueField(wireName: 'birthday')
  @nullable
  String get birthday;
  @BuiltValueField(wireName: 'city')
  @nullable
  String get city;
  @BuiltValueField(wireName: 'district')
  @nullable
  String get district;
  @BuiltValueField(wireName: 'password')
  @nullable
  String get password;
  @BuiltValueField(wireName: 'email')
  @nullable
  String get email;
  String toJson() {
    return json.encode(serializers.serializeWith(RegisterDto.serializer, this));
  }

  static RegisterDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        RegisterDto.serializer, json.decode(jsonString));
  }

  static Serializer<RegisterDto> get serializer => _$registerDtoSerializer;
}
