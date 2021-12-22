import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/credit_my_account/model/deposit_dto.dart';
import 'package:flutter/material.dart';

class MakeTransactionState extends Equatable {
  @override
  List<Object> get props => [];
}

class MakeTransactionEmpty extends MakeTransactionState {}

class MakeTransactionLoading extends MakeTransactionState {}

class DepositLoadingSuccess extends MakeTransactionState {
  final TransactionInitSummary response;
  DepositLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'DepositLoadingSuccess {response:$response}';
}

class CheckTransactionLoadingSuccess extends MakeTransactionState {
  final DepositSummaryDto response;
  CheckTransactionLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'CheckTransactionLoadingSuccess {response:$response}';
}

class MakeTransactionFailure extends MakeTransactionState {
  final String error;

  MakeTransactionFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'MakeTransactionFailure { error: $error }';
}
