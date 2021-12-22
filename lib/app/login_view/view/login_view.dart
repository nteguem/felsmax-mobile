import 'package:feslmax_app/app/forgot_password/view/forgot_password_page.dart';
import 'package:feslmax_app/app/home/view/home_page.dart';
import 'package:feslmax_app/app/login_view/bloc/login.dart';
import 'package:feslmax_app/app/login_view/function_event/login_function.dart';
import 'package:feslmax_app/app/sign_up/view/sign_up_page.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/core/widget/custom_text_button.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field_password.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:feslmax_app/helper/validation_form.dart';
import 'package:feslmax_app/utils/flushbar.dart';
import 'package:feslmax_app/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscuredText = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(listener: (context, state) {
            if (state is LoginLoadingSuccess) {
              _progressDialog.hide();
              flushBarSuccess(state.response.response.message, context);
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomePage.routeName, (route) => false);
              });
            } else if (state is LoginFailure) {
              _progressDialog.hide();
              flushBarError(state.error, context);
            }
          })
        ],
        child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: heightHelper(context, 0.2, 0.05)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Image.asset(
                      AssetPath.felsmax_logo,
                      width: widthHelper(context, 0.5, 0.5),
                      height: heightHelper(context, 0.1, 0.05),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            child: CustomTextFormField(
                              controller: _loginController,
                              hintTextValue:
                                  TranslatedMessages.general['number_or_email'],
                              prefixIcon: Icons.person_outline,
                              phoneCode: '',
                              validator: (value) => verifyEmpty(value),
                            ),
                          ),
                          SizedBox(
                            height: heightHelper(context, 0.02, 0.05),
                          ),
                          Container(
                              child: CustomTextFormFieldPassword(
                            controller: _passwordController,
                            hintTextValue:
                                TranslatedMessages.general['password'],
                            obscuredText: _obscuredText,
                            prefixIcon: Icons.lock_open,
                            validator: (value) => verifyEmpty(value),
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
                          )),
                          SizedBox(
                            height: heightHelper(context, 0.01, 0.05),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: CustomTextButton(
                                onPressedHandler: () {
                                  Navigator.pushNamed(
                                      context, ForgotPasswordPage.routeName);
                                },
                                textTitle: TranslatedMessages
                                    .general['forgot_password']),
                          ),
                          SizedBox(
                            height: heightHelper(context, 0.01, 0.05),
                          ),
                          Container(
                            width: double.infinity,
                            child: CustomButton(
                                onPressedHandler: () {
                                  if (_formKey.currentState.validate()) {
                                    _progressDialog.setMessage(
                                        TranslatedMessages.general['loading']);
                                    _progressDialog.show();
                                    onPressedLoginButton(
                                        usernameOrEmail: _loginController.text,
                                        password: _passwordController.text,
                                        context: context);
                                  }
                                },
                                btnTitle:
                                    TranslatedMessages.general['connexion']),
                          ),
                          SizedBox(
                            height: heightHelper(context, 0.02, 0.05),
                          ),
                          Container(
                            width: double.infinity,
                            child: CustomButton(
                                onPressedHandler: () {
                                  Navigator.pushNamed(
                                      context, SignUpPage.routeName);
                                },
                                btnColor: FelsmaxColors.blackColor,
                                btnTitle: TranslatedMessages
                                    .general['create_account']),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
