import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/login_view/model/login_dto.dart';
import 'package:flutter/material.dart';

class LoginState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEmpty extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoadingSuccess extends LoginState {
  final LoginSummaryDto response;
  LoginLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginLoadingSuccess {response: $response}';
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}
