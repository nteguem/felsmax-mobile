import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/utils/translations.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'custom_alert.dart';

customConfirmAlert({
  @required BuildContext context,
  AlertType alertType,
  @required String title,
  String confirmButtonLabel,
  String cancelButtonLabel,
  Function onNoAction,
  Function closeFunction,
  @required Function onYesAction,
  Widget content,
}) {
  return Alert(
    context: context,
    type: alertType ?? AlertType.warning,
    title: title,
    content: content ?? Container(),
    closeFunction: () => defaultAction(context),
    buttons: [
      DialogButton(
        child: Text(
          cancelButtonLabel ?? translations.text('general.no'),
          style: TextStyle(color: Colors.white, fontSize: fontSizeM),
        ),
        onPressed: onNoAction ?? () => defaultAction(context),
        width: alertSuccessWidth,
      ),
      DialogButton(
        child: Container(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              confirmButtonLabel ?? translations.text('general.yes'),
              style: TextStyle(color: Colors.white, fontSize: fontSizeM),
            ),
          ),
        ),
        onPressed: onYesAction,
        width: alertSuccessWidth,
      ),
    ],
  ).show();
}
