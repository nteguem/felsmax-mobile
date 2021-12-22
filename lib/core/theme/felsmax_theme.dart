import 'package:feslmax_app/core/theme/transition_builder.dart';
import 'package:flutter/material.dart';

import '_expo_theme.dart';

ThemeData felsmaxTheme(BuildContext context) {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryTextTheme: TextTheme(),
    primaryColor: FelsmaxColors.primaryColor,

    ///wylov colorButton which contains all the different color of the button of the application
    buttonTheme: ButtonThemeData(
      disabledColor: Colors.grey,
      buttonColor: FelsmaxColors.primaryColor,
      height: buttonHeight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonBorderRadius),
      ),
    ),
    snackBarTheme: SnackBarThemeData(backgroundColor: Colors.red),
    dividerTheme: DividerThemeData(color: Colors.grey),
    fontFamily: 'MontserratRegular',
    appBarTheme: FelsmaxTextStyles.appBarTheme,

    /// Page transition themes for application
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.android: FelsmaxTransitionBuilder(),
      TargetPlatform.iOS: FelsmaxTransitionBuilder(),
    }),
    dialogBackgroundColor: FelsmaxColors.whiteColor,
  );
}
