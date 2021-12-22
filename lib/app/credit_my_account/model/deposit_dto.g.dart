// GENERATED CODE - DO NOT MODIFY BY HAND

part of deposit_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DepositDto> _$depositDtoSerializer = new _$DepositDtoSerializer();
Serializer<TransactionInitSummary> _$transactionInitSummarySerializer =
    new _$TransactionInitSummarySerializer();
Serializer<TransactionInitSummaryPayment>
    _$transactionInitSummaryPaymentSerializer =
    new _$TransactionInitSummaryPaymentSerializer();
Serializer<CheckTransactionDto> _$checkTransactionDtoSerializer =
    new _$CheckTransactionDtoSerializer();
Serializer<DepositSummaryDto> _$depositSummaryDtoSerializer =
    new _$DepositSummaryDtoSerializer();
Serializer<DepositSummaryDtoTransaction>
    _$depositSummaryDtoTransactionSerializer =
    new _$DepositSummaryDtoTransactionSerializer();

class _$DepositDtoSerializer implements StructuredSerializer<DepositDto> {
  @override
  final Iterable<Type> types = const [DepositDto, _$DepositDto];
  @override
  final String wireName = 'DepositDto';

  @override
  Iterable<Object> serialize(Serializers serializers, DepositDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'operator',
      serializers.serialize(object.operator,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DepositDto deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DepositDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'operator':
          result.operator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionInitSummarySerializer
    implements StructuredSerializer<TransactionInitSummary> {
  @override
  final Iterable<Type> types = const [
    TransactionInitSummary,
    _$TransactionInitSummary
  ];
  @override
  final String wireName = 'TransactionInitSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionInitSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'msg',
      serializers.serialize(object.msg, specifiedType: const FullType(String)),
      'payment',
      serializers.serialize(object.payment,
          specifiedType: const FullType(TransactionInitSummaryPayment)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TransactionInitSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionInitSummaryBuilder();

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
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment':
          result.payment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransactionInitSummaryPayment))
              as TransactionInitSummaryPayment);
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionInitSummaryPaymentSerializer
    implements StructuredSerializer<TransactionInitSummaryPayment> {
  @override
  final Iterable<Type> types = const [
    TransactionInitSummaryPayment,
    _$TransactionInitSummaryPayment
  ];
  @override
  final String wireName = 'TransactionInitSummaryPayment';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionInitSummaryPayment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'paymentId',
      serializers.serialize(object.paymentId,
          specifiedType: const FullType(String)),
      'operator',
      serializers.serialize(object.operator,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TransactionInitSummaryPayment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionInitSummaryPaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentId':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'operator':
          result.operator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckTransactionDtoSerializer
    implements StructuredSerializer<CheckTransactionDto> {
  @override
  final Iterable<Type> types = const [
    CheckTransactionDto,
    _$CheckTransactionDto
  ];
  @override
  final String wireName = 'CheckTransactionDto';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CheckTransactionDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'paymentId',
      serializers.serialize(object.paymentId,
          specifiedType: const FullType(String)),
      'operator',
      serializers.serialize(object.operator,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CheckTransactionDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckTransactionDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentId':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'operator':
          result.operator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DepositSummaryDtoSerializer
    implements StructuredSerializer<DepositSummaryDto> {
  @override
  final Iterable<Type> types = const [DepositSummaryDto, _$DepositSummaryDto];
  @override
  final String wireName = 'DepositSummaryDto';

  @override
  Iterable<Object> serialize(Serializers serializers, DepositSummaryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'msg',
      serializers.serialize(object.msg, specifiedType: const FullType(String)),
      'transaction',
      serializers.serialize(object.transaction,
          specifiedType: const FullType(DepositSummaryDtoTransaction)),
    ];

    return result;
  }

  @override
  DepositSummaryDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DepositSummaryDtoBuilder();

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
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction':
          result.transaction.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DepositSummaryDtoTransaction))
              as DepositSummaryDtoTransaction);
          break;
      }
    }

    return result.build();
  }
}

class _$DepositSummaryDtoTransactionSerializer
    implements StructuredSerializer<DepositSummaryDtoTransaction> {
  @override
  final Iterable<Type> types = const [
    DepositSummaryDtoTransaction,
    _$DepositSummaryDtoTransaction
  ];
  @override
  final String wireName = 'DepositSummaryDtoTransaction';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DepositSummaryDtoTransaction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(String)),
      'paymentRef',
      serializers.serialize(object.paymentRef,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'operator',
      serializers.serialize(object.operator,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(String)),
      '__v',
      serializers.serialize(object.v, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  DepositSummaryDtoTransaction deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DepositSummaryDtoTransactionBuilder();

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
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentRef':
          result.paymentRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'operator':
          result.operator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
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

class _$DepositDto extends DepositDto {
  @override
  final String type;
  @override
  final String phone;
  @override
  final String operator;
  @override
  final String amount;

  factory _$DepositDto([void Function(DepositDtoBuilder) updates]) =>
      (new DepositDtoBuilder()..update(updates)).build();

  _$DepositDto._({this.type, this.phone, this.operator, this.amount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, 'DepositDto', 'type');
    BuiltValueNullFieldError.checkNotNull(phone, 'DepositDto', 'phone');
    BuiltValueNullFieldError.checkNotNull(operator, 'DepositDto', 'operator');
    BuiltValueNullFieldError.checkNotNull(amount, 'DepositDto', 'amount');
  }

  @override
  DepositDto rebuild(void Function(DepositDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DepositDtoBuilder toBuilder() => new DepositDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DepositDto &&
        type == other.type &&
        phone == other.phone &&
        operator == other.operator &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), phone.hashCode), operator.hashCode),
        amount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DepositDto')
          ..add('type', type)
          ..add('phone', phone)
          ..add('operator', operator)
          ..add('amount', amount))
        .toString();
  }
}

class DepositDtoBuilder implements Builder<DepositDto, DepositDtoBuilder> {
  _$DepositDto _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _operator;
  String get operator => _$this._operator;
  set operator(String operator) => _$this._operator = operator;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  DepositDtoBuilder();

  DepositDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _phone = $v.phone;
      _operator = $v.operator;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DepositDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DepositDto;
  }

  @override
  void update(void Function(DepositDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DepositDto build() {
    final _$result = _$v ??
        new _$DepositDto._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'DepositDto', 'type'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'DepositDto', 'phone'),
            operator: BuiltValueNullFieldError.checkNotNull(
                operator, 'DepositDto', 'operator'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'DepositDto', 'amount'));
    replace(_$result);
    return _$result;
  }
}

class _$TransactionInitSummary extends TransactionInitSummary {
  @override
  final bool status;
  @override
  final String msg;
  @override
  final TransactionInitSummaryPayment payment;
  @override
  final String user;

  factory _$TransactionInitSummary(
          [void Function(TransactionInitSummaryBuilder) updates]) =>
      (new TransactionInitSummaryBuilder()..update(updates)).build();

  _$TransactionInitSummary._({this.status, this.msg, this.payment, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'TransactionInitSummary', 'status');
    BuiltValueNullFieldError.checkNotNull(msg, 'TransactionInitSummary', 'msg');
    BuiltValueNullFieldError.checkNotNull(
        payment, 'TransactionInitSummary', 'payment');
    BuiltValueNullFieldError.checkNotNull(
        user, 'TransactionInitSummary', 'user');
  }

  @override
  TransactionInitSummary rebuild(
          void Function(TransactionInitSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionInitSummaryBuilder toBuilder() =>
      new TransactionInitSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionInitSummary &&
        status == other.status &&
        msg == other.msg &&
        payment == other.payment &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, status.hashCode), msg.hashCode), payment.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionInitSummary')
          ..add('status', status)
          ..add('msg', msg)
          ..add('payment', payment)
          ..add('user', user))
        .toString();
  }
}

class TransactionInitSummaryBuilder
    implements Builder<TransactionInitSummary, TransactionInitSummaryBuilder> {
  _$TransactionInitSummary _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  String _msg;
  String get msg => _$this._msg;
  set msg(String msg) => _$this._msg = msg;

  TransactionInitSummaryPaymentBuilder _payment;
  TransactionInitSummaryPaymentBuilder get payment =>
      _$this._payment ??= new TransactionInitSummaryPaymentBuilder();
  set payment(TransactionInitSummaryPaymentBuilder payment) =>
      _$this._payment = payment;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  TransactionInitSummaryBuilder();

  TransactionInitSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _payment = $v.payment.toBuilder();
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionInitSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionInitSummary;
  }

  @override
  void update(void Function(TransactionInitSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionInitSummary build() {
    _$TransactionInitSummary _$result;
    try {
      _$result = _$v ??
          new _$TransactionInitSummary._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'TransactionInitSummary', 'status'),
              msg: BuiltValueNullFieldError.checkNotNull(
                  msg, 'TransactionInitSummary', 'msg'),
              payment: payment.build(),
              user: BuiltValueNullFieldError.checkNotNull(
                  user, 'TransactionInitSummary', 'user'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'payment';
        payment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionInitSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TransactionInitSummaryPayment extends TransactionInitSummaryPayment {
  @override
  final String status;
  @override
  final String message;
  @override
  final String paymentId;
  @override
  final String operator;

  factory _$TransactionInitSummaryPayment(
          [void Function(TransactionInitSummaryPaymentBuilder) updates]) =>
      (new TransactionInitSummaryPaymentBuilder()..update(updates)).build();

  _$TransactionInitSummaryPayment._(
      {this.status, this.message, this.paymentId, this.operator})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'TransactionInitSummaryPayment', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, 'TransactionInitSummaryPayment', 'message');
    BuiltValueNullFieldError.checkNotNull(
        paymentId, 'TransactionInitSummaryPayment', 'paymentId');
    BuiltValueNullFieldError.checkNotNull(
        operator, 'TransactionInitSummaryPayment', 'operator');
  }

  @override
  TransactionInitSummaryPayment rebuild(
          void Function(TransactionInitSummaryPaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionInitSummaryPaymentBuilder toBuilder() =>
      new TransactionInitSummaryPaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionInitSummaryPayment &&
        status == other.status &&
        message == other.message &&
        paymentId == other.paymentId &&
        operator == other.operator;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, status.hashCode), message.hashCode), paymentId.hashCode),
        operator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionInitSummaryPayment')
          ..add('status', status)
          ..add('message', message)
          ..add('paymentId', paymentId)
          ..add('operator', operator))
        .toString();
  }
}

class TransactionInitSummaryPaymentBuilder
    implements
        Builder<TransactionInitSummaryPayment,
            TransactionInitSummaryPaymentBuilder> {
  _$TransactionInitSummaryPayment _$v;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _paymentId;
  String get paymentId => _$this._paymentId;
  set paymentId(String paymentId) => _$this._paymentId = paymentId;

  String _operator;
  String get operator => _$this._operator;
  set operator(String operator) => _$this._operator = operator;

  TransactionInitSummaryPaymentBuilder();

  TransactionInitSummaryPaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _paymentId = $v.paymentId;
      _operator = $v.operator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionInitSummaryPayment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionInitSummaryPayment;
  }

  @override
  void update(void Function(TransactionInitSummaryPaymentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionInitSummaryPayment build() {
    final _$result = _$v ??
        new _$TransactionInitSummaryPayment._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'TransactionInitSummaryPayment', 'status'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'TransactionInitSummaryPayment', 'message'),
            paymentId: BuiltValueNullFieldError.checkNotNull(
                paymentId, 'TransactionInitSummaryPayment', 'paymentId'),
            operator: BuiltValueNullFieldError.checkNotNull(
                operator, 'TransactionInitSummaryPayment', 'operator'));
    replace(_$result);
    return _$result;
  }
}

class _$CheckTransactionDto extends CheckTransactionDto {
  @override
  final String userId;
  @override
  final String paymentId;
  @override
  final String operator;

  factory _$CheckTransactionDto(
          [void Function(CheckTransactionDtoBuilder) updates]) =>
      (new CheckTransactionDtoBuilder()..update(updates)).build();

  _$CheckTransactionDto._({this.userId, this.paymentId, this.operator})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, 'CheckTransactionDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        paymentId, 'CheckTransactionDto', 'paymentId');
    BuiltValueNullFieldError.checkNotNull(
        operator, 'CheckTransactionDto', 'operator');
  }

  @override
  CheckTransactionDto rebuild(
          void Function(CheckTransactionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckTransactionDtoBuilder toBuilder() =>
      new CheckTransactionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckTransactionDto &&
        userId == other.userId &&
        paymentId == other.paymentId &&
        operator == other.operator;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, userId.hashCode), paymentId.hashCode), operator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckTransactionDto')
          ..add('userId', userId)
          ..add('paymentId', paymentId)
          ..add('operator', operator))
        .toString();
  }
}

class CheckTransactionDtoBuilder
    implements Builder<CheckTransactionDto, CheckTransactionDtoBuilder> {
  _$CheckTransactionDto _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _paymentId;
  String get paymentId => _$this._paymentId;
  set paymentId(String paymentId) => _$this._paymentId = paymentId;

  String _operator;
  String get operator => _$this._operator;
  set operator(String operator) => _$this._operator = operator;

  CheckTransactionDtoBuilder();

  CheckTransactionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _paymentId = $v.paymentId;
      _operator = $v.operator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckTransactionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckTransactionDto;
  }

  @override
  void update(void Function(CheckTransactionDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckTransactionDto build() {
    final _$result = _$v ??
        new _$CheckTransactionDto._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'CheckTransactionDto', 'userId'),
            paymentId: BuiltValueNullFieldError.checkNotNull(
                paymentId, 'CheckTransactionDto', 'paymentId'),
            operator: BuiltValueNullFieldError.checkNotNull(
                operator, 'CheckTransactionDto', 'operator'));
    replace(_$result);
    return _$result;
  }
}

class _$DepositSummaryDto extends DepositSummaryDto {
  @override
  final bool status;
  @override
  final String msg;
  @override
  final DepositSummaryDtoTransaction transaction;

  factory _$DepositSummaryDto(
          [void Function(DepositSummaryDtoBuilder) updates]) =>
      (new DepositSummaryDtoBuilder()..update(updates)).build();

  _$DepositSummaryDto._({this.status, this.msg, this.transaction}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'DepositSummaryDto', 'status');
    BuiltValueNullFieldError.checkNotNull(msg, 'DepositSummaryDto', 'msg');
    BuiltValueNullFieldError.checkNotNull(
        transaction, 'DepositSummaryDto', 'transaction');
  }

  @override
  DepositSummaryDto rebuild(void Function(DepositSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DepositSummaryDtoBuilder toBuilder() =>
      new DepositSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DepositSummaryDto &&
        status == other.status &&
        msg == other.msg &&
        transaction == other.transaction;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), msg.hashCode), transaction.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DepositSummaryDto')
          ..add('status', status)
          ..add('msg', msg)
          ..add('transaction', transaction))
        .toString();
  }
}

class DepositSummaryDtoBuilder
    implements Builder<DepositSummaryDto, DepositSummaryDtoBuilder> {
  _$DepositSummaryDto _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  String _msg;
  String get msg => _$this._msg;
  set msg(String msg) => _$this._msg = msg;

  DepositSummaryDtoTransactionBuilder _transaction;
  DepositSummaryDtoTransactionBuilder get transaction =>
      _$this._transaction ??= new DepositSummaryDtoTransactionBuilder();
  set transaction(DepositSummaryDtoTransactionBuilder transaction) =>
      _$this._transaction = transaction;

  DepositSummaryDtoBuilder();

  DepositSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _transaction = $v.transaction.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DepositSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DepositSummaryDto;
  }

  @override
  void update(void Function(DepositSummaryDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DepositSummaryDto build() {
    _$DepositSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$DepositSummaryDto._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'DepositSummaryDto', 'status'),
              msg: BuiltValueNullFieldError.checkNotNull(
                  msg, 'DepositSummaryDto', 'msg'),
              transaction: transaction.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'transaction';
        transaction.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DepositSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DepositSummaryDtoTransaction extends DepositSummaryDtoTransaction {
  @override
  final String createdAt;
  @override
  final String id;
  @override
  final String user;
  @override
  final String paymentRef;
  @override
  final String type;
  @override
  final String phone;
  @override
  final String operator;
  @override
  final String amount;
  @override
  final int v;

  factory _$DepositSummaryDtoTransaction(
          [void Function(DepositSummaryDtoTransactionBuilder) updates]) =>
      (new DepositSummaryDtoTransactionBuilder()..update(updates)).build();

  _$DepositSummaryDtoTransaction._(
      {this.createdAt,
      this.id,
      this.user,
      this.paymentRef,
      this.type,
      this.phone,
      this.operator,
      this.amount,
      this.v})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'DepositSummaryDtoTransaction', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        id, 'DepositSummaryDtoTransaction', 'id');
    BuiltValueNullFieldError.checkNotNull(
        user, 'DepositSummaryDtoTransaction', 'user');
    BuiltValueNullFieldError.checkNotNull(
        paymentRef, 'DepositSummaryDtoTransaction', 'paymentRef');
    BuiltValueNullFieldError.checkNotNull(
        type, 'DepositSummaryDtoTransaction', 'type');
    BuiltValueNullFieldError.checkNotNull(
        phone, 'DepositSummaryDtoTransaction', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        operator, 'DepositSummaryDtoTransaction', 'operator');
    BuiltValueNullFieldError.checkNotNull(
        amount, 'DepositSummaryDtoTransaction', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        v, 'DepositSummaryDtoTransaction', 'v');
  }

  @override
  DepositSummaryDtoTransaction rebuild(
          void Function(DepositSummaryDtoTransactionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DepositSummaryDtoTransactionBuilder toBuilder() =>
      new DepositSummaryDtoTransactionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DepositSummaryDtoTransaction &&
        createdAt == other.createdAt &&
        id == other.id &&
        user == other.user &&
        paymentRef == other.paymentRef &&
        type == other.type &&
        phone == other.phone &&
        operator == other.operator &&
        amount == other.amount &&
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
                            $jc($jc($jc(0, createdAt.hashCode), id.hashCode),
                                user.hashCode),
                            paymentRef.hashCode),
                        type.hashCode),
                    phone.hashCode),
                operator.hashCode),
            amount.hashCode),
        v.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DepositSummaryDtoTransaction')
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('user', user)
          ..add('paymentRef', paymentRef)
          ..add('type', type)
          ..add('phone', phone)
          ..add('operator', operator)
          ..add('amount', amount)
          ..add('v', v))
        .toString();
  }
}

class DepositSummaryDtoTransactionBuilder
    implements
        Builder<DepositSummaryDtoTransaction,
            DepositSummaryDtoTransactionBuilder> {
  _$DepositSummaryDtoTransaction _$v;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _paymentRef;
  String get paymentRef => _$this._paymentRef;
  set paymentRef(String paymentRef) => _$this._paymentRef = paymentRef;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _operator;
  String get operator => _$this._operator;
  set operator(String operator) => _$this._operator = operator;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  int _v;
  int get v => _$this._v;
  set v(int v) => _$this._v = v;

  DepositSummaryDtoTransactionBuilder();

  DepositSummaryDtoTransactionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _id = $v.id;
      _user = $v.user;
      _paymentRef = $v.paymentRef;
      _type = $v.type;
      _phone = $v.phone;
      _operator = $v.operator;
      _amount = $v.amount;
      _v = $v.v;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DepositSummaryDtoTransaction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DepositSummaryDtoTransaction;
  }

  @override
  void update(void Function(DepositSummaryDtoTransactionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DepositSummaryDtoTransaction build() {
    final _$result = _$v ??
        new _$DepositSummaryDtoTransaction._(
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'DepositSummaryDtoTransaction', 'createdAt'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'DepositSummaryDtoTransaction', 'id'),
            user: BuiltValueNullFieldError.checkNotNull(
                user, 'DepositSummaryDtoTransaction', 'user'),
            paymentRef: BuiltValueNullFieldError.checkNotNull(
                paymentRef, 'DepositSummaryDtoTransaction', 'paymentRef'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'DepositSummaryDtoTransaction', 'type'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'DepositSummaryDtoTransaction', 'phone'),
            operator: BuiltValueNullFieldError.checkNotNull(
                operator, 'DepositSummaryDtoTransaction', 'operator'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'DepositSummaryDtoTransaction', 'amount'),
            v: BuiltValueNullFieldError.checkNotNull(v, 'DepositSummaryDtoTransaction', 'v'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
