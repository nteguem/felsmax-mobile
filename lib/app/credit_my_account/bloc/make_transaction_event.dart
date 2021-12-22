import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/credit_my_account/model/deposit_dto.dart';

abstract class MakeTransactionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class DepositTransaction extends MakeTransactionEvent {
  final DepositDto depositDto;
  final String userId;

  DepositTransaction({
    this.depositDto,
    this.userId,
  });

  @override
  List<Object> get props => [depositDto, userId];

  @override
  String toString() => 'DepositTransaction {depositDto: $depositDto,'
      'userId:$userId}';
}

class CheckTransaction extends MakeTransactionEvent {
  final CheckTransactionDto checkTransactionDto;

  CheckTransaction({
    this.checkTransactionDto,
  });

  @override
  List<Object> get props => [checkTransactionDto];

  @override
  String toString() =>
      'CheckTransaction {checkTransactionDto: $checkTransactionDto}';
}
