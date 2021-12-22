import 'package:feslmax_app/app/login_view/bloc/login.dart';
import 'package:feslmax_app/app/login_view/service/login_repository.dart';
import 'package:feslmax_app/app/login_view/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  static const routeName = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) {
        return LoginBloc(repository: LoginRepository());
      })
    ], child: LoginView());
  }
}
