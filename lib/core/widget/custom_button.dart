import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressedHandler;
  final Color btnColor;
  final String btnTitle;
  final double fontSize;
  final FontWeight fontWeight;

  CustomButton(
      {@required this.onPressedHandler,
      this.btnColor = FelsmaxColors.primaryColor,
      @required this.btnTitle,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressedHandler,
      child: Container(
        child: Text(
          btnTitle,
          style: FelsmaxTextStyles.btnTextStyle
              .copyWith(fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
      color: btnColor,
    );
  }
}
