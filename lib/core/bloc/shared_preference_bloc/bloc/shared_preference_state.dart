import 'package:equatable/equatable.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/model/user_local_storage_object.dart';
import 'package:flutter/material.dart';

class SharedPreferenceState extends Equatable {
  @override
  List<Object> get props => [];
}

class SharedPreferenceLoading extends SharedPreferenceState {}

class SharedWriteUserInfoSuccess extends SharedPreferenceState {
  final bool userInfoWrite;

  SharedWriteUserInfoSuccess({this.userInfoWrite});

  @override
  List<Object> get props => [userInfoWrite];

  @override
  String toString() =>
      'SharedWriteUserInfoSuccess { registerWrite: $userInfoWrite }';
}

class SharedReadUserInfoSuccess extends SharedPreferenceState {
  final UserLocalStorageObject userLocalStorageObject;

  SharedReadUserInfoSuccess({this.userLocalStorageObject});

  @override
  List<Object> get props => [userLocalStorageObject];

  @override
  String toString() =>
      'SharedReadUserInfoSuccess { userLocalStorageObject: $userLocalStorageObject }';
}

class SharedPreferenceLoadingFailure extends SharedPreferenceState {
  final String error;

  SharedPreferenceLoadingFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'SharedPreferenceLoadingFailure { error: $error }';
}
