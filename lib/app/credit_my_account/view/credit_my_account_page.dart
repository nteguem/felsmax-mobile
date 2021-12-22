import 'package:feslmax_app/app/credit_my_account/bloc/make_transaction.dart';
import 'package:feslmax_app/app/credit_my_account/service/make_transaction_repository.dart';
import 'package:feslmax_app/app/credit_my_account/view/credit_my_account_view.dart';
import 'package:feslmax_app/core/bloc/navigation_bloc/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditMyAccountPage extends StatelessWidget {
  static const routeName = 'CreditMyAccountPage';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) {
        return MakeTransactionBloc(repository: MakeTransactionRepository());
      }),
      BlocProvider(create: (context) {
        return NavigationBloc();
      })
    ], child: CreditMyAccountView());
  }
}
