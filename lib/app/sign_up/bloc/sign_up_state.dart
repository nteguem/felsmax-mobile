import 'package:equatable/equatable.dart';
import 'package:feslmax_app/core/serveur_message_model/server_response.dart';
import 'package:flutter/material.dart';

class SignUpState extends Equatable {
  @override
  List<Object> get props => [];
}

class SignUpEmpty extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpLoadingSuccess extends SignUpState {
  final ServerResponse response;
  SignUpLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'SignUpLoadingSuccess {response: $response}';
}

class SignUpFailure extends SignUpState {
  final String error;

  SignUpFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'SignUpFailure { error: $error }';
}
