import 'package:feslmax_app/app/login_view/bloc/login.dart';
import 'package:feslmax_app/app/login_view/service/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;

  LoginBloc({@required this.repository}) : super(LoginLoading());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield LoginLoading();
    if (event is LoginPressed) {
      yield* _mapGetUserToLoginToState(event);
    }
  }

  Stream<LoginState> _mapGetUserToLoginToState(LoginPressed event) async* {
    try {
      final result = await repository.loginUser(loginDto: event.loginDto);
      yield LoginLoadingSuccess(response: result);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }
}
