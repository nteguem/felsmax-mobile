import 'package:feslmax_app/app/credit_my_account/bloc/make_transaction.dart';
import 'package:feslmax_app/app/credit_my_account/service/make_transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeTransactionBloc
    extends Bloc<MakeTransactionEvent, MakeTransactionState> {
  final MakeTransactionRepository repository;

  MakeTransactionBloc({@required this.repository})
      : super(MakeTransactionLoading());

  @override
  Stream<MakeTransactionState> mapEventToState(
      MakeTransactionEvent event) async* {
    yield MakeTransactionLoading();
    if (event is DepositTransaction) {
      yield* _mapGetDepositTransactionToState(event);
    } else if (event is CheckTransaction) {
      yield* _mapCheckTransactionTransactionToState(event);
    }
  }

  Stream<MakeTransactionState> _mapGetDepositTransactionToState(
      DepositTransaction event) async* {
    try {
      final result = await repository.depositTransaction(
          userId: event.userId, depositDto: event.depositDto);
      yield DepositLoadingSuccess(response: result);
    } catch (error) {
      yield MakeTransactionFailure(error: error.toString());
    }
  }

  Stream<MakeTransactionState> _mapCheckTransactionTransactionToState(
      CheckTransaction event) async* {
    try {
      final result = await repository.checkTransaction(
          checkTransactionDto: event.checkTransactionDto);
      yield CheckTransactionLoadingSuccess(response: result);
    } catch (error) {
      yield MakeTransactionFailure(error: error.toString());
    }
  }
}
