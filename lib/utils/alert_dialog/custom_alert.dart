import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

customAlert({
  @required BuildContext context,
  AlertType alertType,
  String title,
  String buttonLabel,
  Function action,
  @required Widget content,
}) {
  return Alert(
    context: context,
    content: content,
    type: alertType,
    closeFunction: () => Navigator.pop(context),
    style: AlertStyle(
        titleStyle: TextStyle(
            color: Theme.of(context).primaryColor, fontSize: fontSizeM)),
    title: title ?? "",
    buttons: [
      DialogButton(
        child: Text(
          buttonLabel ?? 'ok',
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSizeM,
              fontWeight: FontWeight.bold),
        ),
        onPressed: action ?? () => defaultAction(context),
        width: widthHelper(context, 0.3, 0.2),
      )
    ],
  ).show();
}

defaultAction(BuildContext context) {
  Navigator.pop(context);
}
