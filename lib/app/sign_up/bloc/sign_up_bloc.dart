import 'package:feslmax_app/app/sign_up/bloc/sign_up.dart';
import 'package:feslmax_app/app/sign_up/service/sign_up_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepository repository;

  SignUpBloc({@required this.repository}) : super(SignUpLoading());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    yield SignUpLoading();
    if (event is SignUp) {
      yield* _mapGetUserSignUpToState(event);
    }
  }

  Stream<SignUpState> _mapGetUserSignUpToState(SignUp event) async* {
    try {
      final userResponse =
          await repository.userSignUp(userReqDto: event.registerDto);
      yield SignUpLoadingSuccess(response: userResponse);
    } catch (error) {
      yield SignUpFailure(error: error.toString());
    }
  }
}
