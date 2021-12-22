import 'package:equatable/equatable.dart';
import 'package:feslmax_app/app/sign_up/model/register_dto.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignUp extends SignUpEvent {
  final RegisterDto registerDto;

  SignUp({this.registerDto});

  @override
  List<Object> get props => [registerDto];

  @override
  String toString() => 'SignUp {registerDto: $registerDto}';
}
