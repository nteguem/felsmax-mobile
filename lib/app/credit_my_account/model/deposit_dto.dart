library deposit_dto;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:feslmax_app/serializers/serializers.dart';

part 'deposit_dto.g.dart';

abstract class DepositDto implements Built<DepositDto, DepositDtoBuilder> {
  DepositDto._();

  factory DepositDto([updates(DepositDtoBuilder b)]) = _$DepositDto;

  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'operator')
  String get operator;
  @BuiltValueField(wireName: 'amount')
  String get amount;
  String toJson() {
    return json.encode(serializers.serializeWith(DepositDto.serializer, this));
  }

  static DepositDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        DepositDto.serializer, json.decode(jsonString));
  }

  static Serializer<DepositDto> get serializer => _$depositDtoSerializer;
}

abstract class TransactionInitSummary
    implements Built<TransactionInitSummary, TransactionInitSummaryBuilder> {
  TransactionInitSummary._();

  factory TransactionInitSummary([updates(TransactionInitSummaryBuilder b)]) =
      _$TransactionInitSummary;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'msg')
  String get msg;
  @BuiltValueField(wireName: 'payment')
  TransactionInitSummaryPayment get payment;
  @BuiltValueField(wireName: 'user')
  String get user;
  String toJson() {
    return json.encode(
        serializers.serializeWith(TransactionInitSummary.serializer, this));
  }

  static TransactionInitSummary fromJson(String jsonString) {
    return serializers.deserializeWith(
        TransactionInitSummary.serializer, json.decode(jsonString));
  }

  static Serializer<TransactionInitSummary> get serializer =>
      _$transactionInitSummarySerializer;
}

abstract class TransactionInitSummaryPayment
    implements
        Built<TransactionInitSummaryPayment,
            TransactionInitSummaryPaymentBuilder> {
  TransactionInitSummaryPayment._();

  factory TransactionInitSummaryPayment(
          [updates(TransactionInitSummaryPaymentBuilder b)]) =
      _$TransactionInitSummaryPayment;

  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'paymentId')
  String get paymentId;
  @BuiltValueField(wireName: 'operator')
  String get operator;
  String toJson() {
    return json.encode(serializers.serializeWith(
        TransactionInitSummaryPayment.serializer, this));
  }

  static TransactionInitSummaryPayment fromJson(String jsonString) {
    return serializers.deserializeWith(
        TransactionInitSummaryPayment.serializer, json.decode(jsonString));
  }

  static Serializer<TransactionInitSummaryPayment> get serializer =>
      _$transactionInitSummaryPaymentSerializer;
}

abstract class CheckTransactionDto
    implements Built<CheckTransactionDto, CheckTransactionDtoBuilder> {
  CheckTransactionDto._();

  factory CheckTransactionDto([updates(CheckTransactionDtoBuilder b)]) =
      _$CheckTransactionDto;

  @BuiltValueField(wireName: 'userId')
  String get userId;
  @BuiltValueField(wireName: 'paymentId')
  String get paymentId;
  @BuiltValueField(wireName: 'operator')
  String get operator;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CheckTransactionDto.serializer, this));
  }

  static CheckTransactionDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        CheckTransactionDto.serializer, json.decode(jsonString));
  }

  static Serializer<CheckTransactionDto> get serializer =>
      _$checkTransactionDtoSerializer;
}

abstract class DepositSummaryDto
    implements Built<DepositSummaryDto, DepositSummaryDtoBuilder> {
  DepositSummaryDto._();

  factory DepositSummaryDto([updates(DepositSummaryDtoBuilder b)]) =
      _$DepositSummaryDto;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'msg')
  String get msg;
  @BuiltValueField(wireName: 'transaction')
  DepositSummaryDtoTransaction get transaction;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DepositSummaryDto.serializer, this));
  }

  static DepositSummaryDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        DepositSummaryDto.serializer, json.decode(jsonString));
  }

  static Serializer<DepositSummaryDto> get serializer =>
      _$depositSummaryDtoSerializer;
}

abstract class DepositSummaryDtoTransaction
    implements
        Built<DepositSummaryDtoTransaction,
            DepositSummaryDtoTransactionBuilder> {
  DepositSummaryDtoTransaction._();

  factory DepositSummaryDtoTransaction(
          [updates(DepositSummaryDtoTransactionBuilder b)]) =
      _$DepositSummaryDtoTransaction;

  @BuiltValueField(wireName: 'createdAt')
  String get createdAt;
  @BuiltValueField(wireName: '_id')
  String get id;
  @BuiltValueField(wireName: 'user')
  String get user;
  @BuiltValueField(wireName: 'paymentRef')
  String get paymentRef;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'operator')
  String get operator;
  @BuiltValueField(wireName: 'amount')
  String get amount;
  @BuiltValueField(wireName: '__v')
  int get v;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DepositSummaryDtoTransaction.serializer, this));
  }

  static DepositSummaryDtoTransaction fromJson(String jsonString) {
    return serializers.deserializeWith(
        DepositSummaryDtoTransaction.serializer, json.decode(jsonString));
  }

  static Serializer<DepositSummaryDtoTransaction> get serializer =>
      _$depositSummaryDtoTransactionSerializer;
}
