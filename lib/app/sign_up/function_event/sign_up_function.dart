import 'package:feslmax_app/app/sign_up/bloc/sign_up.dart';
import 'package:feslmax_app/app/sign_up/model/register_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

onPressedSignUpButton({
  BuildContext context,
  String usernameOrEmail,
  String password,
  String name,
  String phone,
  String surname,
  String city,
  String birthday,
  String district,
}) {
  RegisterDto _registerDto = RegisterDto((builder) => builder
    ..email = usernameOrEmail?.trim()
    ..name = name
    ..phone = phone?.trim()
    ..surname = surname
    ..city = city
    ..birthday = birthday
    ..district = district
    ..password = password?.trim());
  BlocProvider.of<SignUpBloc>(context)..add(SignUp(registerDto: _registerDto));
}
