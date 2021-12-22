import 'package:feslmax_app/app/credit_my_account/bloc/make_transaction.dart';
import 'package:feslmax_app/app/credit_my_account/function_event/make_transaction_event.dart';
import 'package:feslmax_app/app/credit_my_account/view/make_transaction_view/make_transaction_page.dart';
import 'package:feslmax_app/app/home/view/home_page.dart';
import 'package:feslmax_app/constants/transaction_type.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:feslmax_app/helper/validation_form.dart';
import 'package:feslmax_app/utils/alert_dialog/custom_alert.dart';
import 'package:feslmax_app/utils/flushbar.dart';
import 'package:feslmax_app/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MakeTransactionView extends StatefulWidget {
  final MakeTransactionPageArguments arguments;

  MakeTransactionView({this.arguments});

  @override
  _MakeTransactionViewState createState() => _MakeTransactionViewState();
}

class _MakeTransactionViewState extends State<MakeTransactionView> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _transactionAmountController = TextEditingController();

  String user;
  String operator;
  String paymentId;
  int _requestSend = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['credit_your_felsmax_acount']),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<MakeTransactionBloc, MakeTransactionState>(
              listener: (context, state) {
            if (state is DepositLoadingSuccess) {
              flushBarSuccess(state.response.msg, context);
              setState(() {
                user = state.response.user;
                operator = state.response.payment.operator;
                paymentId = state.response.payment.paymentId;
                Future.delayed(const Duration(seconds: 5), () {
                  onPressedToCheckTransactionButton(
                    context: context,
                    userId: user,
                    operator: operator,
                    paymentId: paymentId,
                  );
                });
              });
            } else if (state is CheckTransactionLoadingSuccess) {
              customAlert(
                  context: context,
                  content: Text(
                    TranslatedMessages.general['your_was_credited'] +
                        "${_transactionAmountController.text} XAF",
                    textAlign: TextAlign.center,
                  ),
                  alertType: AlertType.success,
                  action: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, HomePage.routeName, (route) => false);
                  });
            } else if (state is MakeTransactionFailure) {
              setState(() {
                _requestSend += 1;
                if (state.error == 'false' && _requestSend < 3) {
                  Future.delayed(const Duration(seconds: 5), () {
                    onPressedToCheckTransactionButton(
                      context: context,
                      userId: user,
                      operator: operator,
                      paymentId: paymentId,
                    );
                  });
                } else {
                  _progressDialog.hide();
                  flushBarError(
                      TranslatedMessages.general['deposit_failed'], context);
                }
              });
            }
          })
        ],
        child: BlocBuilder<MakeTransactionBloc, MakeTransactionState>(
            builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: heightHelper(context, 0.1, 0.05),
                    child: Image.asset(widget.arguments.assetImage),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              controller: _phoneNumberController,
                              phoneCode: '',
                              keyBoardType: TextInputType.phone,
                              validator: (value) => verifyEmpty(value),
                              prefixIcon: Icons.phone_android,
                              hintTextValue:
                                  TranslatedMessages.general['phone_number'],
                            ),
                            CustomTextFormField(
                              controller: _transactionAmountController,
                              phoneCode: '',
                              keyBoardType: TextInputType.number,
                              validator: (value) => verifyEmpty(value),
                              prefixIcon: Icons.money,
                              hintTextValue: TranslatedMessages
                                  .general['withdrawal_amount'],
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                  top: heightHelper(context, 0.01, 0.05)),
                              child: CustomButton(
                                  onPressedHandler: () {
                                    if (_formKey.currentState.validate()) {
                                      _progressDialog.setMessage(
                                          TranslatedMessages
                                              .general['loading']);
                                      _progressDialog.show();
                                      onPressedToMakeTransactionButton(
                                          userId: widget.arguments.userId,
                                          context: context,
                                          phone: _phoneNumberController.text,
                                          transactionType:
                                              TransactionType.DEPOSIT,
                                          amount:
                                              _transactionAmountController.text,
                                          operator: widget.arguments.operator);
                                    }
                                  },
                                  btnTitle:
                                      TranslatedMessages.general['continue']),
                            )
                          ],
                        )),
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
