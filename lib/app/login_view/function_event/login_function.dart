import 'package:feslmax_app/app/login_view/bloc/login.dart';
import 'package:feslmax_app/app/login_view/model/login_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

onPressedLoginButton({
  BuildContext context,
  String usernameOrEmail,
  String password,
}) {
  LoginDto _loginDto = LoginDto((builder) => builder
    ..email = usernameOrEmail?.trim()
    ..password = password?.trim());
  BlocProvider.of<LoginBloc>(context)..add(LoginPressed(loginDto: _loginDto));
}
