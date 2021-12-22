part of 'refresh_view_bloc.dart';

@immutable
abstract class RefreshViewState extends Equatable {
  const RefreshViewState();
}

class InitialRefreshViewState extends RefreshViewState {
  @override
  List<Object> get props => [];
}

class InitialRefreshViewLoadingState extends RefreshViewState {
  @override
  List<Object> get props => [];
}

class InitialRefreshViewLoadingSuccessState extends RefreshViewState {
  @override
  List<Object> get props => [];
}

class InitialRefreshViewFailureState extends RefreshViewState {
  final String error;

  InitialRefreshViewFailureState({this.error});

  @override
  List<Object> get props => [];

  @override
  String toString() => 'InitialRefreshViewFailureState {error : $error}';
}
