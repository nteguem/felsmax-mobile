import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:feslmax_app/app/login_view/view/login_page.dart';
import 'package:feslmax_app/app/sign_up/bloc/sign_up.dart';
import 'package:feslmax_app/app/sign_up/function_event/sign_up_function.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/CheckBoxRemenberMe.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/core/widget/custom_date_form_field.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field_password.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:feslmax_app/helper/validation_form.dart';
import 'package:feslmax_app/utils/flushbar.dart';
import 'package:feslmax_app/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('237');

  String _phoneCode;
  String _country;

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _quarterController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool _obscuredText = true;
  bool _isSamePassword = false;
  bool _isChecked = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
        appBar: AppBar(
          title: Text(TranslatedMessages.general['create_your_account']),
        ),
        body: MultiBlocListener(
            listeners: [
              BlocListener<SignUpBloc, SignUpState>(listener: (context, state) {
                if (state is SignUpLoadingSuccess) {
                  _progressDialog.hide();
                  flushBarSuccess(state.response.response.message, context);
                  Future.delayed(const Duration(seconds: 3), () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LoginPage.routeName, (route) => false);
                  });
                } else if (state is SignUpFailure) {
                  _progressDialog.hide();
                  flushBarError(state.error, context);
                }
              })
            ],
            child:
                BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            AssetPath.felsmax_logo,
                            width: widthHelper(context, 0.5, 0.5),
                            height: heightHelper(context, 0.1, 0.05),
                          ),
                        ),
                        Card(
                          color: Colors.grey[100],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                onTap: _openCountryPickerDialog,
                                title: _buildDialogItem(_selectedDialogCountry),
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                          controller: _phoneController,
                          phoneCode: _phoneCode,
                          validator: (value) => verifyEmpty(value),
                          hintTextValue:
                              TranslatedMessages.general['phone_number'],
                        ),
                        CustomTextFormField(
                          controller: _emailController,
                          phoneCode: '',
                          validator: (value) => verifyEmailSyntaxe(value),
                          prefixIcon: Icons.alternate_email_outlined,
                          hintTextValue: TranslatedMessages.general['email'],
                        ),
                        CustomTextFormFieldPassword(
                          controller: _passwordController,
                          obscuredText: _obscuredText,
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
                          prefixIcon: Icons.lock_open,
                          hintTextValue: TranslatedMessages.general['password'],
                        ),
                        Visibility(
                          visible: _isSamePassword,
                          child: Container(
                            child: Text(
                              TranslatedMessages
                                  .general['password_is_different'],
                              style: FelsmaxTextStyles.hintTextStyle
                                  .copyWith(color: Colors.red),
                            ),
                          ),
                        ),
                        CustomTextFormFieldPassword(
                          controller: _passwordConfirmController,
                          obscuredText: _obscuredText,
                          onChanged: (value) {
                            setState(() {
                              if (_passwordController.text != value) {
                                _isSamePassword = !_isSamePassword;
                              } else {
                                _isSamePassword = !_isSamePassword;
                              }
                            });
                          },
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
                          validator: (value) => verifyEmpty(value),
                          hintTextValue:
                              TranslatedMessages.general['password_confirm'],
                        ),
                        CustomTextFormField(
                          controller: _nameController,
                          prefixIcon: Icons.person_outline,
                          validator: (value) => verifyEmpty(value),
                          phoneCode: '',
                          hintTextValue: TranslatedMessages.general['name'],
                        ),
                        CustomTextFormField(
                          controller: _surNameController,
                          prefixIcon: Icons.person_outline,
                          phoneCode: '',
                          hintTextValue: TranslatedMessages.general['sur_name'],
                        ),
                        CustomDateFormField(
                          prefixIcon: Icons.calendar_today,
                          controller: _dateController,
                          hintTextValue: TranslatedMessages.general['calender'],
                        ),
                        CustomTextFormField(
                          controller: _cityController,
                          prefixIcon: Icons.location_city,
                          phoneCode: '',
                          hintTextValue: TranslatedMessages.general['city'],
                        ),
                        CustomTextFormField(
                          controller: _quarterController,
                          prefixIcon: Icons.location_on_outlined,
                          phoneCode: '',
                          hintTextValue: TranslatedMessages.general['quarter'],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 05, vertical: 05),
                          child: Row(
                            children: [
                              CheckBoxRemenberMe(
                                isChecked: _isChecked,
                                onCheckedBoxChanged: (checked) {
                                  setState(() {
                                    _isChecked = checked;
                                  });
                                },
                              ),
                              const SizedBox(width: 8),
                              Text(TranslatedMessages
                                  .general['accept_condition']),
                            ],
                          ),
                        ),
                        Container(
                          child: Divider(),
                        ),
                        Container(
                          width: double.infinity,
                          child: CustomButton(
                              onPressedHandler: () {
                                if (_formKey.currentState.validate() &&
                                    _isChecked) {
                                  _progressDialog.setMessage(
                                      TranslatedMessages.general['loading']);
                                  _progressDialog.show();
                                  onPressedSignUpButton(
                                      context: context,
                                      name: _nameController.text,
                                      password: _passwordController.text,
                                      usernameOrEmail: _emailController.text,
                                      phone: _phoneController.text,
                                      birthday: _dateController.text,
                                      city: _cityController.text,
                                      district: _quarterController.text,
                                      surname: _surNameController.text);
                                } else if (!_isChecked) {
                                  flushBarInfo(
                                      TranslatedMessages
                                          .general['accept_condition'],
                                      context);
                                }
                              },
                              btnTitle: TranslatedMessages.general['continue']),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })));
  }

  Widget _buildDialogItem(Country country) {
    _phoneCode = country.phoneCode;
    _country = country.name;
    return Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        SizedBox(width: 8.0),
        Flexible(child: Text(country.name))
      ],
    );
  }

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.pink),
          child: CountryPickerDialog(
            titlePadding: EdgeInsets.all(8.0),
            searchCursorColor: Colors.pinkAccent,
            searchInputDecoration: InputDecoration(hintText: 'Search...'),
            isSearchable: true,
            title: Text('Select your phone code'),
            onValuePicked: (Country country) =>
                setState(() => _selectedDialogCountry = country),
            itemBuilder: _buildDialogItem,
            priorityList: [
              CountryPickerUtils.getCountryByIsoCode('TR'),
              CountryPickerUtils.getCountryByIsoCode('US'),
            ],
          ),
        ),
      );
}
