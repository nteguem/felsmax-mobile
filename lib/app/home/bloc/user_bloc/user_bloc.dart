import 'package:feslmax_app/app/home/bloc/user_bloc/user.dart';
import 'package:feslmax_app/app/home/service/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc({@required this.repository}) : super(UserLoading());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield UserLoading();
    if (event is UserProfile) {
      yield* _mapGetUserProfileToState(event);
    }
  }

  Stream<UserState> _mapGetUserProfileToState(UserEvent event) async* {
    try {
      final result = await repository.userProfile();
      yield UserLoadingSuccess(response: result);
    } catch (error) {
      yield UserFailure(error: error.toString());
    }
  }
}
