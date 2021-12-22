// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServerResponse> _$serverResponseSerializer =
    new _$ServerResponseSerializer();
Serializer<Response> _$responseSerializer = new _$ResponseSerializer();

class _$ServerResponseSerializer
    implements StructuredSerializer<ServerResponse> {
  @override
  final Iterable<Type> types = const [ServerResponse, _$ServerResponse];
  @override
  final String wireName = 'ServerResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, ServerResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'response',
      serializers.serialize(object.response,
          specifiedType: const FullType(Response)),
    ];

    return result;
  }

  @override
  ServerResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServerResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
              specifiedType: const FullType(Response)) as Response);
          break;
      }
    }

    return result.build();
  }
}

class _$ResponseSerializer implements StructuredSerializer<Response> {
  @override
  final Iterable<Type> types = const [Response, _$Response];
  @override
  final String wireName = 'Response';

  @override
  Iterable<Object> serialize(Serializers serializers, Response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Response deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ServerResponse extends ServerResponse {
  @override
  final bool status;
  @override
  final Response response;

  factory _$ServerResponse([void Function(ServerResponseBuilder) updates]) =>
      (new ServerResponseBuilder()..update(updates)).build();

  _$ServerResponse._({this.status, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'ServerResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        response, 'ServerResponse', 'response');
  }

  @override
  ServerResponse rebuild(void Function(ServerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerResponseBuilder toBuilder() =>
      new ServerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerResponse &&
        status == other.status &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServerResponse')
          ..add('status', status)
          ..add('response', response))
        .toString();
  }
}

class ServerResponseBuilder
    implements Builder<ServerResponse, ServerResponseBuilder> {
  _$ServerResponse _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  ResponseBuilder _response;
  ResponseBuilder get response => _$this._response ??= new ResponseBuilder();
  set response(ResponseBuilder response) => _$this._response = response;

  ServerResponseBuilder();

  ServerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerResponse;
  }

  @override
  void update(void Function(ServerResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServerResponse build() {
    _$ServerResponse _$result;
    try {
      _$result = _$v ??
          new _$ServerResponse._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'ServerResponse', 'status'),
              response: response.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServerResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Response extends Response {
  @override
  final String message;

  factory _$Response([void Function(ResponseBuilder) updates]) =>
      (new ResponseBuilder()..update(updates)).build();

  _$Response._({this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, 'Response', 'message');
  }

  @override
  Response rebuild(void Function(ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseBuilder toBuilder() => new ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Response && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Response')..add('message', message))
        .toString();
  }
}

class ResponseBuilder implements Builder<Response, ResponseBuilder> {
  _$Response _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ResponseBuilder();

  ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Response;
  }

  @override
  void update(void Function(ResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Response build() {
    final _$result = _$v ??
        new _$Response._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'Response', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
