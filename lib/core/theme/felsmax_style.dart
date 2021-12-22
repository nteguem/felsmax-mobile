import 'package:flutter/material.dart';

import '_expo_theme.dart';

class FelsmaxTextStyles {
  FelsmaxTextStyles._();

  static const TextStyle contentTextStyle1 = TextStyle(
    fontFamily: 'MontserratMedium',
    fontSize: fontSizeXXS,
    color: FelsmaxColors.primaryColor,
  );

  static const TextStyle contentTextStyle2 = TextStyle(
    fontFamily: 'MontserratMedium',
    fontSize: fontSizeXXXS,
    color: FelsmaxColors.blackColor,
  );
  static const TextStyle textStyleForTextFormField = TextStyle(
    fontFamily: 'MontserratMedium',
    fontSize: fontSizeXS,
    color: FelsmaxColors.blackColor,
  );

  static const TextStyle hintTextStyle = TextStyle(
    fontFamily: 'MontserratBold',
    fontSize: fontSizeXS,
    color: FelsmaxColors.greyColor,
  );

  static const TextStyle btnTextStyle = TextStyle(
    fontFamily: 'MontserratRegular',
    fontSize: fontSizeXXS,
    color: FelsmaxColors.whiteColor,
  );

  static const TextStyle textBtnStyle = TextStyle(
    fontFamily: 'MontserratBold',
    fontSize: fontSizeXS + 1,
    color: FelsmaxColors.primaryColor,
  );

  static const TextStyle contentTitleTextStyle = TextStyle(
    fontFamily: 'PoppinsBold',
    fontSize: fontSizeML,
    color: FelsmaxColors.primaryColor,
  );

  static const TextStyle contentTextTextStyle = TextStyle(
    fontFamily: 'PoppinsBold',
    fontSize: fontSizeXS,
    fontWeight: FontWeight.bold,
    color: FelsmaxColors.blackColor,
  );

  static const TextStyle contentTextTextStyleCard = TextStyle(
    fontFamily: 'PoppinsMedium',
    fontSize: fontSizeXXXS + 1,
    fontWeight: FontWeight.bold,
    color: FelsmaxColors.blackColor,
  );

  static const TextStyle contentTextTextStyleCard1 = TextStyle(
    fontFamily: 'RobotoRegular',
    fontSize: currencySize,
    fontWeight: FontWeight.normal,
    color: FelsmaxColors.blackColor,
  );

  static const TextStyle contentTextTitlePartStyle = TextStyle(
    fontFamily: 'RobotoBold',
    fontSize: currencySize + 1,
    fontWeight: FontWeight.normal,
    color: FelsmaxColors.greyColor,
  );

  static const TextStyle display21Style = TextStyle(
      fontFamily: 'MontserratBold',
      fontSize: fontSizeM,
      color: FelsmaxColors.whiteColor,
      fontWeight: FontWeight.bold);

  static const AppBarTheme appBarTheme = AppBarTheme(
    iconTheme: IconThemeData(color: FelsmaxColors.whiteColor),
    textTheme: TextTheme(headline6: display21Style),
  );
}
