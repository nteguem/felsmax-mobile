import 'package:feslmax_app/core/theme/felsmax_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldNoBorder extends StatelessWidget {
  final String hintText;

  CustomTextFormFieldNoBorder({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          hintText: hintText,
          hintStyle: FelsmaxTextStyles.hintTextStyle.copyWith(
              color: Colors.white,
              fontFamily: 'MontserratMedium',
              fontSize: 11),
        ),
      ),
    );
  }
}
