import 'package:feslmax_app/app/credit_my_account/bloc/make_transaction_bloc.dart';
import 'package:feslmax_app/app/credit_my_account/service/make_transaction_repository.dart';
import 'package:feslmax_app/app/credit_my_account/view/make_transaction_view/make_transaction_view.dart';
import 'package:feslmax_app/core/bloc/navigation_bloc/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeTransactionPageArguments implements PagesArgumentType {
  final String userId;
  final String assetImage;
  final String operator;

  MakeTransactionPageArguments({this.userId, this.assetImage, this.operator});

  @override
  getArguments() {
    return this;
  }
}

class MakeTransactionPage extends StatelessWidget {
  static const routeName = 'MakeTransactionPage';

  @override
  Widget build(BuildContext context) {
    MakeTransactionPageArguments arguments = ModalRoute.of(context)
        .settings
        .arguments as MakeTransactionPageArguments;
    return MultiBlocProvider(
      providers: [
        BlocProvider<MakeTransactionBloc>(create: (context) {
          return MakeTransactionBloc(repository: MakeTransactionRepository());
        })
      ],
      child: MakeTransactionView(
        arguments: arguments,
      ),
    );
  }
}
