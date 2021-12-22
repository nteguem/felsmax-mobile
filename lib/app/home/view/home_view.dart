import 'package:feslmax_app/app/credit_my_account/view/credit_my_account_page.dart';
import 'package:feslmax_app/app/home/bloc/user_bloc/user.dart';
import 'package:feslmax_app/app/home/model/card_home_model.dart';
import 'package:feslmax_app/app/home/model/user_summary_dto.dart';
import 'package:feslmax_app/app/home/service/user_repository.dart';
import 'package:feslmax_app/app/home/widget/custom_card.dart';
import 'package:feslmax_app/app/home/widget/custom_header.dart';
import 'package:feslmax_app/app/login_view/view/login_page.dart';
import 'package:feslmax_app/constants/preferences_key.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/bloc/shared_preference.dart';
import 'package:feslmax_app/core/bloc/shared_preference_bloc/model/user_local_storage_object.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:feslmax_app/utils/flushbar.dart';
import 'package:feslmax_app/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'drawer/felsmax_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ResponseUserSummary responseUserSummary;
  bool _isUserInfoLoading = false;

  _navigateTo(String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  void initState() {
    getUserProfile();
    super.initState();
  }

  void getUserProfile() {
    BlocProvider.of<UserBloc>(context)..add(UserProfile());
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['app_name']),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                getUserProfile();
              })
        ],
      ),
      body: MultiBlocListener(
          listeners: [
            BlocListener<UserBloc, UserState>(listener: (context, state) {
              if (state is UserLoading) {
                _progressDialog
                    .setMessage(TranslatedMessages.general['loading']);
                _progressDialog.show();
              } else if (state is UserLoadingSuccess) {
                setState(() {
                  responseUserSummary = state.response.response;
                  UserLocalStorageObject _userLocalStorageObject =
                      UserLocalStorageObject(
                          userId: responseUserSummary.user.id);
                  BlocProvider.of<SharedPreferenceBloc>(context)
                    ..add(WriteUserInformationInLocalStorage(
                        objectKey: PreferencesKeys.userInformationKey,
                        userLocalStorageObject: _userLocalStorageObject));
                });
              } else if (state is UserFailure) {
                _progressDialog.hide();
                flushBarError(state.error, context);
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginPage.routeName, (route) => false);
              }
            }),
            BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                listener: (context, state) {
              if (state is SharedWriteUserInfoSuccess) {
                setState(() {
                  _progressDialog.hide();
                });
              }
            })
          ],
          child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            return Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: widthHelper(context, 0.5, 0.2),
                        height: heightHelper(context, 0.08, 0.02),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: CustomButton(
                            onPressedHandler: () {},
                            btnTitle: TranslatedMessages
                                .general['wait_verification']),
                      ),
                    ],
                  ),
                  Container(
                    child: CustomHeader(
                      amount: "${responseUserSummary?.balance ?? ''}" ?? '',
                      userId: "${responseUserSummary?.user?.id ?? ''}" ?? '',
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 20.0,
                          children: List.generate(listOfItem.length, (index) {
                            return Container(
                              child: CustomCard(
                                title: listOfItem[index].title,
                                onTapPressed: () =>
                                    _navigateTo(listOfItem[index].routeName),
                                uriIamge: listOfItem[index].uriPath,
                              ),
                            );
                          })),
                    ),
                  )
                ],
              ),
            );
          })),
      drawer: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) {
              return UserBloc(repository: UserRepository());
            })
          ],
          child: FelsMaxDrawer(
            amout: "${responseUserSummary?.balance ?? ''}" ?? '',
            country:
                "${responseUserSummary?.user?.city ?? ''} ${responseUserSummary?.user?.district ?? ''}" ??
                    '',
            username:
                "${responseUserSummary?.user?.name ?? ''} ${responseUserSummary?.user?.surname ?? ''}" ??
                    '',
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CreditMyAccountPage.routeName);
        },
        backgroundColor: FelsmaxColors.primaryColor,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
