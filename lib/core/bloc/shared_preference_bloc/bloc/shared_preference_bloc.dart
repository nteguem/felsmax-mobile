import 'dart:convert';

import 'package:feslmax_app/core/bloc/shared_preference_bloc/bloc/shared_preference.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/model/user_local_storage_object.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceBloc
    extends Bloc<SharedPreferenceEvent, SharedPreferenceState> {
  SharedPreferenceBloc() : super(SharedPreferenceLoading());

  @override
  Stream<SharedPreferenceState> mapEventToState(
      SharedPreferenceEvent event) async* {
    yield SharedPreferenceLoading();
    if (event is WriteUserInformationInLocalStorage) {
      yield* _writeUserLocalStorageObjectObject(event);
    } else if (event is ReadUserInformationInLocalStorage) {
      yield* _readUserLocalStorageObjectObject(event);
    }
  }
}

Stream<SharedPreferenceState> _writeUserLocalStorageObjectObject(
    WriteUserInformationInLocalStorage event) async* {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    final result = await prefs.setString(
        event.objectKey, event.userLocalStorageObject.toString());
    yield SharedWriteUserInfoSuccess(userInfoWrite: result);
  } catch (e) {
    yield SharedPreferenceLoadingFailure(error: e.toString());
  }
}

Stream<SharedPreferenceState> _readUserLocalStorageObjectObject(
    ReadUserInformationInLocalStorage event) async* {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    final result = prefs.getString(event.objectKey);
    UserLocalStorageObject object =
        UserLocalStorageObject.fromJson(jsonDecode(result));
    yield SharedReadUserInfoSuccess(userLocalStorageObject: object);
  } catch (e) {
    yield SharedPreferenceLoadingFailure(error: e.toString());
  }
}
