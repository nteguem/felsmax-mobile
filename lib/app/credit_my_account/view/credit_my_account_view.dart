import 'package:feslmax_app/app/credit_my_account/bloc/make_transaction.dart';
import 'package:feslmax_app/app/credit_my_account/widget/custom_card_credit_my_account.dart';
import 'package:feslmax_app/app/deposit_withdrawal/model/custom_model_action.dart';
import 'package:feslmax_app/constants/preferences_key.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/bloc/navigation_bloc/navigation.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/bloc/shared_preference.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/model/user_local_storage_object.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'make_transaction_view/make_transaction_page.dart';

class CreditMyAccountView extends StatefulWidget {
  const CreditMyAccountView({Key key}) : super(key: key);

  @override
  _CreditMyAccountViewState createState() => _CreditMyAccountViewState();
}

class _CreditMyAccountViewState extends State<CreditMyAccountView> {
  TextEditingController _searchValueController = TextEditingController();

  UserLocalStorageObject _localStorageObject;

  @override
  void initState() {
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(ReadUserInformationInLocalStorage(
          objectKey: PreferencesKeys.userInformationKey));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['credit_my_account']),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedReadUserInfoSuccess) {
              setState(() {
                _localStorageObject = state.userLocalStorageObject;
              });
            }
          }),
          BlocListener<NavigationBloc, NavigationState>(
              listener: (context, state) {
            if (state is NavigationWasAsked<MakeTransactionPageArguments>) {
              Navigator.pushNamed(context, MakeTransactionPage.routeName,
                  arguments: state.arguments);
            }
          })
        ],
        child: BlocBuilder<MakeTransactionBloc, MakeTransactionState>(
            builder: (context, state) {
          return Container(
            child: Column(
              children: [
                CustomTextFormField(
                  controller: _searchValueController,
                  prefixIcon: Icons.search,
                  phoneCode: '',
                  hintTextValue: TranslatedMessages.general['search'],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: widthHelper(context, 0.02, 0.02)),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return CustomCardCreditMyAccount(
                            title: depositWitdrawlList[index].title,
                            onTapPressed: () {
                              BlocProvider.of<NavigationBloc>(context)
                                ..add(GoToMakeTransactionPage(
                                    arguments: MakeTransactionPageArguments(
                                        userId: _localStorageObject.userId,
                                        operator:
                                            depositWitdrawlList[index].operator,
                                        assetImage: depositWitdrawlList[index]
                                            .uriPath)));
                            },
                            uriIamge: depositWitdrawlList[index].uriPath,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                        itemCount: depositWitdrawlList.length),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
