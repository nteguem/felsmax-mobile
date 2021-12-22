import 'package:feslmax_app/helper/helpers.dart';
import 'package:feslmax_app/utils/translations.dart';
import 'package:flutter/material.dart';

String verifyEmpty(String value, {String errorMessage}) {
  return value.trim().isEmpty
      ? (errorMessage ?? translations.text('validation_error.empty'))
      : null;
}

String verifyEmptyIsNumeric(String value, {String errorMessage}) {
  if (value.trim().isEmpty) {
    return translations.text('validation_error.empty');
  } else {
    if (isNumeric(removeBlank(value))) {
      return null;
    } else {
      return translations.text('validation_error.numeric');
    }
  }
}

String verifyIfIsNumericOrEmail(String value) {
  if (value.trim().isEmpty) {
    return translations.text('validation_error.empty');
  } else {
    if (isNumeric(removeBlank(value))) {
      return null;
    } else {
      return verifyEmailSyntaxe(value);
    }
  }
}

bool isValidMoneyAmount(String value) {
  return isNumeric(removeBlank(value)) && double.parse(value) >= 0;
}

String verifySpace(String value, {String errorMessage}) {
  if (value.trim().isEmpty)
    return translations.text('empty');
  else if (value.contains(' '))
    return translations.text('do_not_contains_space');
  else
    return null;
}

String verifyUserName(String value) {
  if (value.trim().isEmpty)
    return translations.text('validation_error.empty');
  else if (value.trim().length < 3)
    return translations.text('length_user_name');
  else
    return null;
}

String verifyValue(String value, String item) {
  if (value.isEmpty)
    return translations.text('validation_error.empty');
  else if (value.length > 10)
    return item + translations.text('length_text_form_field.lower');
  else
    return null;
}

String verifyMobileNumber(String value) {
  if (value.isEmpty)
    return translations.text("validation_error.empty");
  else if (value.length < 9 || value.length > 12)
    return translations.text('length_phone');
  else
    return null;
}

String verifyEmailSyntaxe(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isNotEmpty) {
    if (!regex.hasMatch(value.trim()))
      return translations.text('invalid_email');
  }
  return null;
}

String verifyPassword(String value) {
  Pattern passwordPatter =
      r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])([a-zA-Z0-9@$!%*?&]{8,})$';
  RegExp regex = new RegExp(passwordPatter);
  if (value.isEmpty)
    return translations.text('validation_error.password_required');
  else if (value.contains(' '))
    return translations.text('validation_error.password_space_is_forbidden');
  else if (value.length < 8)
    return translations.text('validation_error.password_invalid_length');
  else if (!regex.hasMatch(value.trim()))
    return translations.text('validation_error.password_contain');
  else
    return null;
}

String verifyDate(DateTime data1, DateTime data2) {
  if (data1 == null)
    return translations.text('validation_error.empty');
  else if (data1 == data2 && data1.isAfter(data2))
    return translations.text('birth_date_to_be_lower_than_current');
  else
    return null;
}

String verifyBirthDate(DateTime data1) {
  DateTime data2 = DateTime.now();
  if (data1 == null)
    return translations.text('validation_error.empty');
  else if (data1 == data2 && data1.isAfter(data2))
    return translations.text('birth_date_to_be_lower_than_current');
  else
    return null;
}

String verifyConfirmationPassword(String value, String passwordValue) {
  String error = verifyPassword(value);
  if (error == null) {
    if (value != passwordValue)
      return translations.text('validation_error.passwords_not_equal');
    else
      return null;
  }
  return error;
}

String verifyPhoneNumber(String value) {
  Pattern pattern = r'^\+[+]?[0-9]{3}-?[0-9]{6,12}$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty)
    return translations.text('validation_error.empty');
  else if ((value.length < 13) && (!regex.hasMatch(value)))
    return translations.text('phone.phone_number_small');
  else
    return null;
}

String verifyValueIfisNotNull(String value) {
  if (value.isEmpty) {
    return translations.text('validation_error.empty');
  } else {
    return null;
  }
}

fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
