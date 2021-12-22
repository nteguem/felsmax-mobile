import 'package:feslmax_app/app/commissions/view/commission_page.dart';
import 'package:feslmax_app/app/credit_my_account/view/credit_my_account_page.dart';
import 'package:feslmax_app/app/debit_or_credit/view/debit_or_credit_page.dart';
import 'package:feslmax_app/app/forgot_password/view/forgot_password_page.dart';
import 'package:feslmax_app/app/operations/view/operation_page.dart';
import 'package:feslmax_app/app/update_password/view/update_password_page.dart';
import 'package:feslmax_app/app/user_profil/view/user_profil_page.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModelDrawer {
  Icon iconData;
  String uriPathIcon;
  String title;
  String routeName;

  ModelDrawer({
    this.iconData,
    this.uriPathIcon,
    this.title,
    this.routeName,
  });
}

List<ModelDrawer> modelDrawerList = [
  ModelDrawer(
      title: TranslatedMessages.general['transaction'],
      iconData: Icon(Icons.snippet_folder_rounded),
      routeName: OperationPage.routeName),
  ModelDrawer(
      title: TranslatedMessages.general['debit_credit'],
      iconData: Icon(Icons.money),
      routeName: DebitOrCreditPage.routeName),
  ModelDrawer(
    title: TranslatedMessages.general['commission'],
    iconData: Icon(Icons.assignment_returned),
    routeName: CommissionPage.routeName,
  ),
  ModelDrawer(
      title: TranslatedMessages.general['charge_account'],
      iconData: Icon(Icons.shopping_cart),
      routeName: CreditMyAccountPage.routeName),
  ModelDrawer(
      title: TranslatedMessages.general['update_password'],
      iconData: Icon(Icons.lock),
      routeName: UpdatePasswordPage.routeName),
  ModelDrawer(
      title: TranslatedMessages.general['profile'],
      iconData: Icon(Icons.person),
      routeName: UserProfilePage.routeName),
  ModelDrawer(
      title: TranslatedMessages.general['contact_us'],
      iconData: Icon(Icons.contact_phone_rounded),
      routeName: ForgotPasswordPage.routeName),
  ModelDrawer(
      title: TranslatedMessages.general['sign_out'],
      iconData: Icon(Icons.arrow_drop_down_circle)),
];
