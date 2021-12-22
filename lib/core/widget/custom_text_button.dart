import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function onPressedHandler;
  final String textTitle;

  CustomTextButton({
    @required this.onPressedHandler,
    @required this.textTitle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedHandler,
      child: Container(
        child: Text(
          textTitle,
          style: FelsmaxTextStyles.textBtnStyle,
        ),
      ),
    );
  }
}
