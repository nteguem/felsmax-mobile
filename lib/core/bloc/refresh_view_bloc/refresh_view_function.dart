import 'package:feslmax_app/core/bloc/refresh_view_bloc/refresh_view_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

refreshBlocAction(BuildContext context) {
  BlocProvider.of<RefreshViewBloc>(context)..add(RefreshMyLastPage());
}
