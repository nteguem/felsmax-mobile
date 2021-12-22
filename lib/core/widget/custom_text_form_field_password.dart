import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldPassword extends StatelessWidget {
  final TextEditingController controller;
  final String hintTextValue;
  final bool obscuredText;
  final Widget suffixIcon;
  final Function validator;
  final Function onChanged;
  final IconData prefixIcon;

  CustomTextFormFieldPassword({
    @required this.controller,
    @required this.hintTextValue,
    this.obscuredText = false,
    @required this.suffixIcon,
    this.validator,
    this.prefixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.grey[100],
        elevation: 5,
        child: Row(
          children: [
            Container(
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
                    horizontal: widthHelper(context, 0.02, 0.01)),
                child: TextFormField(
                  obscureText: obscuredText,
                  style: FelsmaxTextStyles.textStyleForTextFormField,
                  onChanged: onChanged,
                  controller: controller,
                  validator: validator,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    suffixIcon: suffixIcon,
                    contentPadding:
                        EdgeInsets.only(left: 10, bottom: 11, top: 12),
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
