import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintTextValue;
  final TextEditingController controller;
  final Function validator;
  final TextAlign textAlign;
  final IconData prefixIcon;
  final String phoneCode;
  final Widget suffixIcon;
  final TextInputType keyBoardType;

  CustomTextFormField({
    this.hintTextValue,
    @required this.controller,
    this.validator,
    this.textAlign,
    this.prefixIcon,
    this.phoneCode,
    this.suffixIcon,
    this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.grey[100],
        elevation: 5,
        child: Row(
          children: [
            phoneCode.isNotEmpty
                ? Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '+$phoneCode',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: FelsmaxColors.primaryColor),
                    ),
                  )
                : Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      prefixIcon,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: widthHelper(context, 0.0, 0.01)),
                child: TextFormField(
                  style: FelsmaxTextStyles.textStyleForTextFormField,
                  controller: controller,
                  validator: validator,
                  keyboardType: keyBoardType,
                  textAlign: textAlign ?? TextAlign.left,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: suffixIcon,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 10, bottom: 11, top: 11),
                    hintText: hintTextValue,
                    hintStyle: FelsmaxTextStyles.hintTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
