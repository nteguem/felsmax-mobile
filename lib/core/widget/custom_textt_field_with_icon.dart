import 'package:flutter/material.dart';

import 'custom_text_form_field_no_border.dart';

class CustomTextFieldWithIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressedHandler;
  final String hintText;

  CustomTextFieldWithIcon({
    this.icon,
    this.onPressedHandler,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            onPressed: onPressedHandler,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: CustomTextFormFieldNoBorder(
              hintText: hintText,
            ),
          )
        ],
      ),
    );
  }
}
