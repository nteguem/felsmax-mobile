import 'package:equatable/equatable.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/model/user_local_storage_object.dart';
import 'package:flutter/material.dart';

abstract class SharedPreferenceEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  String toString() => 'SharedPreferenceState { }';
}

class WriteUserInformationInLocalStorage extends SharedPreferenceEvent {
  final String objectKey;
  final UserLocalStorageObject userLocalStorageObject;

  WriteUserInformationInLocalStorage({
    @required this.objectKey,
    this.userLocalStorageObject,
  });
}

class ReadUserInformationInLocalStorage extends SharedPreferenceEvent {
  final String objectKey;

  ReadUserInformationInLocalStorage({
    @required this.objectKey,
  });
}
