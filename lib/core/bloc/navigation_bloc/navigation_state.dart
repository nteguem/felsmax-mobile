import 'package:equatable/equatable.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class NavigationEmpty extends NavigationState {}

class NavigationWasAsked<ArgumentsType extends PagesArgumentType>
    extends NavigationState {
  final ArgumentsType arguments;

  const NavigationWasAsked(this.arguments);

  @override
  List<Object> get props => [arguments];
  @override
  String toString() => 'NavigationWasAsked {}';
}

class PagesArgumentType {
  getArguments() {}
}
