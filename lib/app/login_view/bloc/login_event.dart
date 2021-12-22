import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/login_view/model/login_dto.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginPressed extends LoginEvent {
  final LoginDto loginDto;

  LoginPressed({this.loginDto});

  @override
  List<Object> get props => [loginDto];

  @override
  String toString() => 'LoginPressed {loginDto: $loginDto}';
}
