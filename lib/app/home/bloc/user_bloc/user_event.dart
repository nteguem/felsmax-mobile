import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserProfile extends UserEvent {
  UserProfile();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'UserProfile {}';
}
