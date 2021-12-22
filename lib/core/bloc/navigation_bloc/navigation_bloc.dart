import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:feslmax_app/core/bloc/navigation_bloc/navigation.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationEmpty());

  NavigationState get initialState => NavigationEmpty();

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    yield NavigationEmpty();
    if (event is GoToMakeTransactionPage) {
      yield* _mapGoToAPageToState(event.arguments);
    }
  }

  Stream<NavigationState> _mapGoToAPageToState<T extends PagesArgumentType>(
      T arguments) async* {
    yield NavigationWasAsked(arguments);
  }
}
