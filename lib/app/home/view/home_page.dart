import 'package:feslmax_app/app/home/bloc/user_bloc/user.dart';
import 'package:feslmax_app/app/home/service/user_repository.dart';
import 'package:feslmax_app/app/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) {
        return UserBloc(repository: UserRepository());
      })
    ], child: HomeView());
  }
}
