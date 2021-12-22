library user_summary_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:feslmax_app/serializers/serializers.dart';

part 'user_summary_dto.g.dart';

abstract class UserSummaryDto
    implements Built<UserSummaryDto, UserSummaryDtoBuilder> {
  UserSummaryDto._();

  factory UserSummaryDto([updates(UserSummaryDtoBuilder b)]) = _$UserSummaryDto;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'response')
  ResponseUserSummary get response;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UserSummaryDto.serializer, this));
  }

  static UserSummaryDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserSummaryDto.serializer, json.decode(jsonString));
  }

  static Serializer<UserSummaryDto> get serializer =>
      _$userSummaryDtoSerializer;
}

abstract class ResponseUserSummary
    implements Built<ResponseUserSummary, ResponseUserSummaryBuilder> {
  ResponseUserSummary._();

  factory ResponseUserSummary([updates(ResponseUserSummaryBuilder b)]) =
      _$ResponseUserSummary;

  // @BuiltValueField(wireName: 'transactions')
  // BuiltList<Transactions> get transactions;
  @BuiltValueField(wireName: 'createdAt')
  String get createdAt;
  @BuiltValueField(wireName: 'updatedAt')
  String get updatedAt;
  @BuiltValueField(wireName: '_id')
  String get id;
  @BuiltValueField(wireName: 'user')
  UserSummary get user;
  @BuiltValueField(wireName: 'balance')
  String get balance;
  @BuiltValueField(wireName: '__v')
  int get v;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ResponseUserSummary.serializer, this));
  }

  static ResponseUserSummary fromJson(String jsonString) {
    return serializers.deserializeWith(
        ResponseUserSummary.serializer, json.decode(jsonString));
  }

  static Serializer<ResponseUserSummary> get serializer =>
      _$responseUserSummarySerializer;
}

abstract class UserSummary implements Built<UserSummary, UserSummaryBuilder> {
  UserSummary._();

  factory UserSummary([updates(UserSummaryBuilder b)]) = _$UserSummary;

  @BuiltValueField(wireName: '_id')
  @nullable
  String get id;
  @BuiltValueField(wireName: 'name')
  @nullable
  String get name;
  @BuiltValueField(wireName: 'email')
  @nullable
  String get email;
  @BuiltValueField(wireName: 'surname')
  @nullable
  String get surname;
  @BuiltValueField(wireName: 'password')
  @nullable
  String get password;
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
  @BuiltValueField(wireName: 'timestamp')
  @nullable
  String get timestamp;
  @BuiltValueField(wireName: '__v')
  @nullable
  int get v;
  String toJson() {
    return json.encode(serializers.serializeWith(UserSummary.serializer, this));
  }

  static UserSummary fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserSummary.serializer, json.decode(jsonString));
  }

  static Serializer<UserSummary> get serializer => _$userSummarySerializer;
}
