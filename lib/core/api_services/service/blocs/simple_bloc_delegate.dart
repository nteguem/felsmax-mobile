import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

// We can extend `BlocDelegate` and override `onTransition` and `onError`
// in order to handle transitions and errors from all Blocs.
class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    debugPrint('${bloc.runtimeType} $event');
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    super.onError(cubit, error, stackTrace);
    debugPrint('${cubit.runtimeType} $error \n $stackTrace');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('${bloc.runtimeType} $transition');
  }
}
