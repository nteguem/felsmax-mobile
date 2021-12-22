import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key key}) : super(key: key);

  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['app_name']),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Image.asset(
                AssetPath.felsmax_logo,
                width: widthHelper(context, 0.5, 0.5),
                height: heightHelper(context, 0.1, 0.05),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: TranslatedMessages.general['contact'],
                      style: TextStyle(color: FelsmaxColors.blackColor)),
                  TextSpan(
                      text: '6 55 26 15 79',
                      style: TextStyle(
                        color: FelsmaxColors.blackColor,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: CustomButton(
                  onPressedHandler: () {},
                  btnTitle: TranslatedMessages.general['whatsapp']),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: CustomButton(
                  onPressedHandler: () {},
                  btnTitle: TranslatedMessages.general['call']),
            )
          ],
        ),
      ),
    );
  }
}
