import 'package:feslmax_app/app/credit_my_account/bloc/make_transaction.dart';
import 'package:feslmax_app/app/credit_my_account/model/deposit_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

onPressedToMakeTransactionButton(
    {BuildContext context,
    String userId,
    String operator,
    String amount,
    String phone,
    String transactionType}) {
  DepositDto _depositDto = DepositDto((builder) => builder
    ..operator = operator
    ..phone = phone?.trim()
    ..amount = amount
    ..type = transactionType);
  BlocProvider.of<MakeTransactionBloc>(context)
    ..add(DepositTransaction(userId: userId, depositDto: _depositDto));
}

onPressedToCheckTransactionButton({
  BuildContext context,
  String userId,
  String paymentId,
  String operator,
}) {
  CheckTransactionDto _checkTransactionDto =
      CheckTransactionDto((builder) => builder
        ..operator = operator
        ..userId = userId
        ..paymentId = paymentId);
  BlocProvider.of<MakeTransactionBloc>(context)
    ..add(CheckTransaction(checkTransactionDto: _checkTransactionDto));
}
