// GENERATED CODE - DO NOT MODIFY BY HAND

part of register_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterDto> _$registerDtoSerializer = new _$RegisterDtoSerializer();

class _$RegisterDtoSerializer implements StructuredSerializer<RegisterDto> {
  @override
  final Iterable<Type> types = const [RegisterDto, _$RegisterDto];
  @override
  final String wireName = 'RegisterDto';

  @override
  Iterable<Object> serialize(Serializers serializers, RegisterDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.password;
    if (value != null) {
      result
        ..add('password')
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
    return result;
  }

  @override
  RegisterDto deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
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
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterDto extends RegisterDto {
  @override
  final String name;
  @override
  final String surname;
  @override
  final String phone;
  @override
  final String birthday;
  @override
  final String city;
  @override
  final String district;
  @override
  final String password;
  @override
  final String email;

  factory _$RegisterDto([void Function(RegisterDtoBuilder) updates]) =>
      (new RegisterDtoBuilder()..update(updates)).build();

  _$RegisterDto._(
      {this.name,
      this.surname,
      this.phone,
      this.birthday,
      this.city,
      this.district,
      this.password,
      this.email})
      : super._();

  @override
  RegisterDto rebuild(void Function(RegisterDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterDtoBuilder toBuilder() => new RegisterDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterDto &&
        name == other.name &&
        surname == other.surname &&
        phone == other.phone &&
        birthday == other.birthday &&
        city == other.city &&
        district == other.district &&
        password == other.password &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), surname.hashCode),
                            phone.hashCode),
                        birthday.hashCode),
                    city.hashCode),
                district.hashCode),
            password.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterDto')
          ..add('name', name)
          ..add('surname', surname)
          ..add('phone', phone)
          ..add('birthday', birthday)
          ..add('city', city)
          ..add('district', district)
          ..add('password', password)
          ..add('email', email))
        .toString();
  }
}

class RegisterDtoBuilder implements Builder<RegisterDto, RegisterDtoBuilder> {
  _$RegisterDto _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _surname;
  String get surname => _$this._surname;
  set surname(String surname) => _$this._surname = surname;

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

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  RegisterDtoBuilder();

  RegisterDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _surname = $v.surname;
      _phone = $v.phone;
      _birthday = $v.birthday;
      _city = $v.city;
      _district = $v.district;
      _password = $v.password;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterDto;
  }

  @override
  void update(void Function(RegisterDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterDto build() {
    final _$result = _$v ??
        new _$RegisterDto._(
            name: name,
            surname: surname,
            phone: phone,
            birthday: birthday,
            city: city,
            district: district,
            password: password,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
