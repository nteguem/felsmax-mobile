// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginDto> _$loginDtoSerializer = new _$LoginDtoSerializer();
Serializer<LoginSummaryDto> _$loginSummaryDtoSerializer =
    new _$LoginSummaryDtoSerializer();
Serializer<ResponseLogin> _$responseLoginSerializer =
    new _$ResponseLoginSerializer();

class _$LoginDtoSerializer implements StructuredSerializer<LoginDto> {
  @override
  final Iterable<Type> types = const [LoginDto, _$LoginDto];
  @override
  final String wireName = 'LoginDto';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginDto deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginSummaryDtoSerializer
    implements StructuredSerializer<LoginSummaryDto> {
  @override
  final Iterable<Type> types = const [LoginSummaryDto, _$LoginSummaryDto];
  @override
  final String wireName = 'LoginSummaryDto';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginSummaryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'statut',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'response',
      serializers.serialize(object.response,
          specifiedType: const FullType(ResponseLogin)),
    ];

    return result;
  }

  @override
  LoginSummaryDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginSummaryDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'statut':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
              specifiedType: const FullType(ResponseLogin)) as ResponseLogin);
          break;
      }
    }

    return result.build();
  }
}

class _$ResponseLoginSerializer implements StructuredSerializer<ResponseLogin> {
  @override
  final Iterable<Type> types = const [ResponseLogin, _$ResponseLogin];
  @override
  final String wireName = 'ResponseLogin';

  @override
  Iterable<Object> serialize(Serializers serializers, ResponseLogin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'access_token',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'token_type',
      serializers.serialize(object.tokenType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ResponseLogin deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseLoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_type':
          result.tokenType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginDto extends LoginDto {
  @override
  final String email;
  @override
  final String password;

  factory _$LoginDto([void Function(LoginDtoBuilder) updates]) =>
      (new LoginDtoBuilder()..update(updates)).build();

  _$LoginDto._({this.email, this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'LoginDto', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'LoginDto', 'password');
  }

  @override
  LoginDto rebuild(void Function(LoginDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginDtoBuilder toBuilder() => new LoginDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginDto &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginDto')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LoginDtoBuilder implements Builder<LoginDto, LoginDtoBuilder> {
  _$LoginDto _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginDtoBuilder();

  LoginDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginDto;
  }

  @override
  void update(void Function(LoginDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginDto build() {
    final _$result = _$v ??
        new _$LoginDto._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'LoginDto', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'LoginDto', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$LoginSummaryDto extends LoginSummaryDto {
  @override
  final bool status;
  @override
  final ResponseLogin response;

  factory _$LoginSummaryDto([void Function(LoginSummaryDtoBuilder) updates]) =>
      (new LoginSummaryDtoBuilder()..update(updates)).build();

  _$LoginSummaryDto._({this.status, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'LoginSummaryDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        response, 'LoginSummaryDto', 'response');
  }

  @override
  LoginSummaryDto rebuild(void Function(LoginSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSummaryDtoBuilder toBuilder() =>
      new LoginSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSummaryDto &&
        status == other.status &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginSummaryDto')
          ..add('status', status)
          ..add('response', response))
        .toString();
  }
}

class LoginSummaryDtoBuilder
    implements Builder<LoginSummaryDto, LoginSummaryDtoBuilder> {
  _$LoginSummaryDto _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  ResponseLoginBuilder _response;
  ResponseLoginBuilder get response =>
      _$this._response ??= new ResponseLoginBuilder();
  set response(ResponseLoginBuilder response) => _$this._response = response;

  LoginSummaryDtoBuilder();

  LoginSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginSummaryDto;
  }

  @override
  void update(void Function(LoginSummaryDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginSummaryDto build() {
    _$LoginSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$LoginSummaryDto._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'LoginSummaryDto', 'status'),
              response: response.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ResponseLogin extends ResponseLogin {
  @override
  final String accessToken;
  @override
  final String message;
  @override
  final String tokenType;

  factory _$ResponseLogin([void Function(ResponseLoginBuilder) updates]) =>
      (new ResponseLoginBuilder()..update(updates)).build();

  _$ResponseLogin._({this.accessToken, this.message, this.tokenType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'ResponseLogin', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(message, 'ResponseLogin', 'message');
    BuiltValueNullFieldError.checkNotNull(
        tokenType, 'ResponseLogin', 'tokenType');
  }

  @override
  ResponseLogin rebuild(void Function(ResponseLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseLoginBuilder toBuilder() => new ResponseLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseLogin &&
        accessToken == other.accessToken &&
        message == other.message &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), message.hashCode),
        tokenType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResponseLogin')
          ..add('accessToken', accessToken)
          ..add('message', message)
          ..add('tokenType', tokenType))
        .toString();
  }
}

class ResponseLoginBuilder
    implements Builder<ResponseLogin, ResponseLoginBuilder> {
  _$ResponseLogin _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _tokenType;
  String get tokenType => _$this._tokenType;
  set tokenType(String tokenType) => _$this._tokenType = tokenType;

  ResponseLoginBuilder();

  ResponseLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _message = $v.message;
      _tokenType = $v.tokenType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseLogin;
  }

  @override
  void update(void Function(ResponseLoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResponseLogin build() {
    final _$result = _$v ??
        new _$ResponseLogin._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'ResponseLogin', 'accessToken'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'ResponseLogin', 'message'),
            tokenType: BuiltValueNullFieldError.checkNotNull(
                tokenType, 'ResponseLogin', 'tokenType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
