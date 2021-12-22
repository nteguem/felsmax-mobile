import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field_password.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpdatePasswordView extends StatefulWidget {
  const UpdatePasswordView({Key key}) : super(key: key);

  @override
  _UpdatePasswordViewState createState() => _UpdatePasswordViewState();
}

class _UpdatePasswordViewState extends State<UpdatePasswordView> {
  TextEditingController _oldPasswordConfirmController = TextEditingController();
  TextEditingController _newPasswordConfirmController = TextEditingController();
  TextEditingController _confirmPasswordConfirmController =
      TextEditingController();
  bool _obscuredText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['update_password']),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: heightHelper(context, 0.02, 0.02),
              horizontal: widthHelper(context, 0.02, 0.02)),
          child: Column(
            children: [
              CustomTextFormFieldPassword(
                controller: _oldPasswordConfirmController,
                obscuredText: _obscuredText,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _obscuredText = !_obscuredText;
                    });
                  },
                  child: Icon(
                    _obscuredText
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ),
                prefixIcon: Icons.lock_open,
                hintTextValue: TranslatedMessages.general['old_password'],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: heightHelper(context, 0.01, 0.02)),
                child: CustomTextFormFieldPassword(
                  controller: _newPasswordConfirmController,
                  obscuredText: _obscuredText,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        _obscuredText = !_obscuredText;
                      });
                    },
                    child: Icon(
                      _obscuredText
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  prefixIcon: Icons.lock_open,
                  hintTextValue: TranslatedMessages.general['new_password'],
                ),
              ),
              CustomTextFormFieldPassword(
                controller: _confirmPasswordConfirmController,
                obscuredText: _obscuredText,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _obscuredText = !_obscuredText;
                    });
                  },
                  child: Icon(
                    _obscuredText
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ),
                prefixIcon: Icons.lock_open,
                hintTextValue: TranslatedMessages.general['password_confirm'],
              ),
              Container(
                padding:
                    EdgeInsets.only(top: heightHelper(context, 0.01, 0.02)),
                width: double.infinity,
                child: CustomButton(
                    btnColor: FelsmaxColors.blackColor,
                    onPressedHandler: () {},
                    btnTitle: TranslatedMessages.general['update']),
              )
            ],
          ),
        ),
      ),
    );
  }
}
