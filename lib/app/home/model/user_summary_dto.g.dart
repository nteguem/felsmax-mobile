// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_summary_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserSummaryDto> _$userSummaryDtoSerializer =
    new _$UserSummaryDtoSerializer();
Serializer<ResponseUserSummary> _$responseUserSummarySerializer =
    new _$ResponseUserSummarySerializer();
Serializer<UserSummary> _$userSummarySerializer = new _$UserSummarySerializer();

class _$UserSummaryDtoSerializer
    implements StructuredSerializer<UserSummaryDto> {
  @override
  final Iterable<Type> types = const [UserSummaryDto, _$UserSummaryDto];
  @override
  final String wireName = 'UserSummaryDto';

  @override
  Iterable<Object> serialize(Serializers serializers, UserSummaryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'response',
      serializers.serialize(object.response,
          specifiedType: const FullType(ResponseUserSummary)),
    ];

    return result;
  }

  @override
  UserSummaryDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSummaryDtoBuilder();

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
                  specifiedType: const FullType(ResponseUserSummary))
              as ResponseUserSummary);
          break;
      }
    }

    return result.build();
  }
}

class _$ResponseUserSummarySerializer
    implements StructuredSerializer<ResponseUserSummary> {
  @override
  final Iterable<Type> types = const [
    ResponseUserSummary,
    _$ResponseUserSummary
  ];
  @override
  final String wireName = 'ResponseUserSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ResponseUserSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserSummary)),
      'balance',
      serializers.serialize(object.balance,
          specifiedType: const FullType(String)),
      '__v',
      serializers.serialize(object.v, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ResponseUserSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseUserSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserSummary)) as UserSummary);
          break;
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSummarySerializer implements StructuredSerializer<UserSummary> {
  @override
  final Iterable<Type> types = const [UserSummary, _$UserSummary];
  @override
  final String wireName = 'UserSummary';

  @override
  Iterable<Object> serialize(Serializers serializers, UserSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surname;
    if (value != null) {
      result
        ..add('surname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.v;
    if (value != null) {
      result
        ..add('__v')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserSummary deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSummaryDto extends UserSummaryDto {
  @override
  final bool status;
  @override
  final ResponseUserSummary response;

  factory _$UserSummaryDto([void Function(UserSummaryDtoBuilder) updates]) =>
      (new UserSummaryDtoBuilder()..update(updates)).build();

  _$UserSummaryDto._({this.status, this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'UserSummaryDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        response, 'UserSummaryDto', 'response');
  }

  @override
  UserSummaryDto rebuild(void Function(UserSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSummaryDtoBuilder toBuilder() =>
      new UserSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSummaryDto &&
        status == other.status &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSummaryDto')
          ..add('status', status)
          ..add('response', response))
        .toString();
  }
}

class UserSummaryDtoBuilder
    implements Builder<UserSummaryDto, UserSummaryDtoBuilder> {
  _$UserSummaryDto _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  ResponseUserSummaryBuilder _response;
  ResponseUserSummaryBuilder get response =>
      _$this._response ??= new ResponseUserSummaryBuilder();
  set response(ResponseUserSummaryBuilder response) =>
      _$this._response = response;

  UserSummaryDtoBuilder();

  UserSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSummaryDto;
  }

  @override
  void update(void Function(UserSummaryDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSummaryDto build() {
    _$UserSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$UserSummaryDto._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'UserSummaryDto', 'status'),
              response: response.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ResponseUserSummary extends ResponseUserSummary {
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String id;
  @override
  final UserSummary user;
  @override
  final String balance;
  @override
  final int v;

  factory _$ResponseUserSummary(
          [void Function(ResponseUserSummaryBuilder) updates]) =>
      (new ResponseUserSummaryBuilder()..update(updates)).build();

  _$ResponseUserSummary._(
      {this.createdAt,
      this.updatedAt,
      this.id,
      this.user,
      this.balance,
      this.v})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'ResponseUserSummary', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'ResponseUserSummary', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(id, 'ResponseUserSummary', 'id');
    BuiltValueNullFieldError.checkNotNull(user, 'ResponseUserSummary', 'user');
    BuiltValueNullFieldError.checkNotNull(
        balance, 'ResponseUserSummary', 'balance');
    BuiltValueNullFieldError.checkNotNull(v, 'ResponseUserSummary', 'v');
  }

  @override
  ResponseUserSummary rebuild(
          void Function(ResponseUserSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseUserSummaryBuilder toBuilder() =>
      new ResponseUserSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseUserSummary &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        user == other.user &&
        balance == other.balance &&
        v == other.v;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, createdAt.hashCode), updatedAt.hashCode),
                    id.hashCode),
                user.hashCode),
            balance.hashCode),
        v.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResponseUserSummary')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('user', user)
          ..add('balance', balance)
          ..add('v', v))
        .toString();
  }
}

class ResponseUserSummaryBuilder
    implements Builder<ResponseUserSummary, ResponseUserSummaryBuilder> {
  _$ResponseUserSummary _$v;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  UserSummaryBuilder _user;
  UserSummaryBuilder get user => _$this._user ??= new UserSummaryBuilder();
  set user(UserSummaryBuilder user) => _$this._user = user;

  String _balance;
  String get balance => _$this._balance;
  set balance(String balance) => _$this._balance = balance;

  int _v;
  int get v => _$this._v;
  set v(int v) => _$this._v = v;

  ResponseUserSummaryBuilder();

  ResponseUserSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _user = $v.user.toBuilder();
      _balance = $v.balance;
      _v = $v.v;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseUserSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseUserSummary;
  }

  @override
  void update(void Function(ResponseUserSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResponseUserSummary build() {
    _$ResponseUserSummary _$result;
    try {
      _$result = _$v ??
          new _$ResponseUserSummary._(
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'ResponseUserSummary', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'ResponseUserSummary', 'updatedAt'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'ResponseUserSummary', 'id'),
              user: user.build(),
              balance: BuiltValueNullFieldError.checkNotNull(
                  balance, 'ResponseUserSummary', 'balance'),
              v: BuiltValueNullFieldError.checkNotNull(
                  v, 'ResponseUserSummary', 'v'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ResponseUserSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserSummary extends UserSummary {
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String surname;
  @override
  final String password;
  @override
  final String phone;
  @override
  final String birthday;
  @override
  final String city;
  @override
  final String district;
  @override
  final String timestamp;
  @override
  final int v;

  factory _$UserSummary([void Function(UserSummaryBuilder) updates]) =>
      (new UserSummaryBuilder()..update(updates)).build();

  _$UserSummary._(
      {this.id,
      this.name,
      this.email,
      this.surname,
      this.password,
      this.phone,
      this.birthday,
      this.city,
      this.district,
      this.timestamp,
      this.v})
      : super._();

  @override
  UserSummary rebuild(void Function(UserSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSummaryBuilder toBuilder() => new UserSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSummary &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        surname == other.surname &&
        password == other.password &&
        phone == other.phone &&
        birthday == other.birthday &&
        city == other.city &&
        district == other.district &&
        timestamp == other.timestamp &&
        v == other.v;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                                        email.hashCode),
                                    surname.hashCode),
                                password.hashCode),
                            phone.hashCode),
                        birthday.hashCode),
                    city.hashCode),
                district.hashCode),
            timestamp.hashCode),
        v.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('surname', surname)
          ..add('password', password)
          ..add('phone', phone)
          ..add('birthday', birthday)
          ..add('city', city)
          ..add('district', district)
          ..add('timestamp', timestamp)
          ..add('v', v))
        .toString();
  }
}

class UserSummaryBuilder implements Builder<UserSummary, UserSummaryBuilder> {
  _$UserSummary _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _surname;
  String get surname => _$this._surname;
  set surname(String surname) => _$this._surname = surname;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _birthday;
  String get birthday => _$this._birthday;
  set birthday(String birthday) => _$this._birthday = birthday;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  String _timestamp;
  String get timestamp => _$this._timestamp;
  set timestamp(String timestamp) => _$this._timestamp = timestamp;

  int _v;
  int get v => _$this._v;
  set v(int v) => _$this._v = v;

  UserSummaryBuilder();

  UserSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _surname = $v.surname;
      _password = $v.password;
      _phone = $v.phone;
      _birthday = $v.birthday;
      _city = $v.city;
      _district = $v.district;
      _timestamp = $v.timestamp;
      _v = $v.v;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSummary;
  }

  @override
  void update(void Function(UserSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSummary build() {
    final _$result = _$v ??
        new _$UserSummary._(
            id: id,
            name: name,
            email: email,
            surname: surname,
            password: password,
            phone: phone,
            birthday: birthday,
            city: city,
            district: district,
            timestamp: timestamp,
            v: v);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
