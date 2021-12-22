import 'package:feslmax_app/app/sign_up/bloc/sign_up_bloc.dart';
import 'package:feslmax_app/app/sign_up/service/sign_up_repository.dart';
import 'package:feslmax_app/app/sign_up/view/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = 'SignUpPage';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) {
        return SignUpBloc(repository: SignUpRepository());
      })
    ], child: SignUpView());
  }
}
