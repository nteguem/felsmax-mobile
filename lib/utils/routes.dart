import 'package:feslmax_app/app/commissions/view/commission_page.dart';
import 'package:feslmax_app/app/credit_card/view/see_user_card_page.dart';
import 'package:feslmax_app/app/credit_my_account/view/credit_my_account_page.dart';
import 'package:feslmax_app/app/credit_my_account/view/make_transaction_view/make_transaction_page.dart';
import 'package:feslmax_app/app/credit_transfer/view/transfert_credit_page.dart';
import 'package:feslmax_app/app/debit_or_credit/view/debit_or_credit_page.dart';
import 'package:feslmax_app/app/deposit_withdrawal/view/deposit_withdrawl_page.dart';
import 'package:feslmax_app/app/forgot_password/view/forgot_password_page.dart';
import 'package:feslmax_app/app/home/view/home_page.dart';
import 'package:feslmax_app/app/login_view/view/login_page.dart';
import 'package:feslmax_app/app/operations/view/operation_page.dart';
import 'package:feslmax_app/app/pay_facture/view/canal+/canal_+_page.dart';
import 'package:feslmax_app/app/pay_facture/view/pay_eneo/pay_eneo_page.dart';
import 'package:feslmax_app/app/pay_facture/view/pay_facture_page.dart';
import 'package:feslmax_app/app/sign_up/view/sign_up_page.dart';
import 'package:feslmax_app/app/update_password/view/update_password_page.dart';
import 'package:feslmax_app/app/user_profil/view/user_profil_page.dart';
import 'package:flutter/material.dart';

var felsmaxRoute = <String, WidgetBuilder>{
  LoginPage.routeName: (_) => LoginPage(),
  SignUpPage.routeName: (_) => SignUpPage(),
  ForgotPasswordPage.routeName: (_) => ForgotPasswordPage(),
  HomePage.routeName: (_) => HomePage(),
  DepositAndWithdrawelPage.routeName: (_) => DepositAndWithdrawelPage(),
  TransfertCreditPage.routeName: (_) => TransfertCreditPage(),
  PayFacturePage.routeName: (_) => PayFacturePage(),
  OperationPage.routeName: (_) => OperationPage(),
  DebitOrCreditPage.routeName: (_) => DebitOrCreditPage(),
  CommissionPage.routeName: (_) => CommissionPage(),
  CreditMyAccountPage.routeName: (_) => CreditMyAccountPage(),
  UpdatePasswordPage.routeName: (_) => UpdatePasswordPage(),
  UserProfilePage.routeName: (_) => UserProfilePage(),
  SeeUserCardPage.routeName: (_) => SeeUserCardPage(),
  PayEneoPage.routeName: (_) => PayEneoPage(),
  CanalPage.routeName: (_) => CanalPage(),
  MakeTransactionPage.routeName: (_) => MakeTransactionPage(),
};
