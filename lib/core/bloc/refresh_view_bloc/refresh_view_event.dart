part of 'refresh_view_bloc.dart';

@immutable
abstract class RefreshViewEvent extends Equatable {
  const RefreshViewEvent();
}

class RefreshMyLastPage extends RefreshViewEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'RefreshMyLastPage {}';
}
