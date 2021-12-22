library server_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:feslmax_app/serializers/serializers.dart';

part 'server_response.g.dart';

abstract class ServerResponse
    implements Built<ServerResponse, ServerResponseBuilder> {
  ServerResponse._();

  factory ServerResponse([updates(ServerResponseBuilder b)]) = _$ServerResponse;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'response')
  Response get response;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ServerResponse.serializer, this));
  }

  static ServerResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ServerResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ServerResponse> get serializer =>
      _$serverResponseSerializer;
}

abstract class Response implements Built<Response, ResponseBuilder> {
  Response._();

  factory Response([updates(ResponseBuilder b)]) = _$Response;

  @BuiltValueField(wireName: 'message')
  String get message;
  String toJson() {
    return json.encode(serializers.serializeWith(Response.serializer, this));
  }

  static Response fromJson(String jsonString) {
    return serializers.deserializeWith(
        Response.serializer, json.decode(jsonString));
  }

  static Serializer<Response> get serializer => _$responseSerializer;
}
