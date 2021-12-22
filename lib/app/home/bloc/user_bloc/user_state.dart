import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/home/model/user_summary_dto.dart';
import 'package:flutter/material.dart';

class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserEmpty extends UserState {}

class UserLoading extends UserState {}

class UserLoadingSuccess extends UserState {
  final UserSummaryDto response;
  UserLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'UserLoadingSuccess {response: $response}';
}

class UserFailure extends UserState {
  final String error;

  UserFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'UserFailure { error: $error }';
}
