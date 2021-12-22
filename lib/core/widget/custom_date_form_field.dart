import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateFormField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintTextValue;
  final TextEditingController controller;
  final Function validator;

  CustomDateFormField({
    this.prefixIcon,
    @required this.controller,
    this.hintTextValue,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd");
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
                child: DateTimeField(
                  format: format,
                  controller: controller,
                  validator: validator,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 10, bottom: 11, top: 11),
                    hintText: hintTextValue,
                    hintStyle: FelsmaxTextStyles.hintTextStyle,
                  ),
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
