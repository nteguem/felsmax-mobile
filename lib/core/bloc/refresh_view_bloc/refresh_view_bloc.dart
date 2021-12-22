import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'refresh_view_event.dart';
part 'refresh_view_state.dart';

class RefreshViewBloc extends Bloc<RefreshViewEvent, RefreshViewState> {
  RefreshViewBloc({RefreshViewState initialState}) : super(initialState);

  @override
  RefreshViewState get initialState => InitialRefreshViewLoadingState();

  @override
  Stream<RefreshViewState> mapEventToState(RefreshViewEvent event) async* {
    yield InitialRefreshViewLoadingState();
    if (event is RefreshMyLastPage) {
      yield* _mapRefreshViewToState();
    }
  }

  Stream<RefreshViewState> _mapRefreshViewToState() async* {
    try {
      yield InitialRefreshViewLoadingSuccessState();
    } catch (error) {
      yield InitialRefreshViewFailureState(error: error.toString());
    }
  }
}
