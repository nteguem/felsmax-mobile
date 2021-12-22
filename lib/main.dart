import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/api_services/service/blocs/simple_bloc_delegate.dart';
import 'package:feslmax_app/core/bloc/refresh_view_bloc/refresh_view_bloc.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/bloc/shared_preference_bloc.dart';
import 'package:feslmax_app/utils/routes.dart';
import 'package:feslmax_app/utils/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/splasch_screen/view/splach_screen_page.dart';
import 'core/theme/felsmax_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocDelegate();

  await translations.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return SharedPreferenceBloc();
        }),
        BlocProvider(create: (context) {
          return RefreshViewBloc();
        }),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: TranslatedMessages.general['app_name'],
        theme: felsmaxTheme(context),
        home: SplaschScreenPage(),
        routes: felsmaxRoute,
      ),
    );
  }
}
