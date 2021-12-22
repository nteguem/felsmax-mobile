import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/credit_my_account/view/make_transaction_view/make_transaction_page.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();
}

class GoToMakeTransactionPage extends NavigationEvent {
  final MakeTransactionPageArguments arguments;

  GoToMakeTransactionPage({this.arguments});

  @override
  List<Object> get props => [arguments];

  @override
  String toString() => 'GoToMakeTransactionPage { '
      'objectKey:  $arguments}';
}
