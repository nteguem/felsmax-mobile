import 'package:feslmax_app/app/home/bloc/user_bloc/user.dart';
import 'package:feslmax_app/app/home/model/user_summary_dto.dart';
import 'package:feslmax_app/app/user_profil/widget/custom_item_profil.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/utils/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({Key key}) : super(key: key);

  @override
  _UserProfileViewState createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  ResponseUserSummary responseUserSummary;
  bool _isUserInfoLoading = false;

  @override
  void initState() {
    BlocProvider.of<UserBloc>(context)..add(UserProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(TranslatedMessages.general['profile']),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<UserBloc, UserState>(listener: (context, state) {
              if (state is UserLoadingSuccess) {
                setState(() {
                  responseUserSummary = state.response.response;
                  _isUserInfoLoading = true;
                });
              } else if (state is UserFailure) {
                flushBarError(state.error, context);
                _isUserInfoLoading = true;
              }
            })
          ],
          child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            return _isUserInfoLoading
                ? Container(
                    child: ListView(
                      children: [
                        CustomItemProfile(
                          value: '${responseUserSummary.id}',
                          titleValue: 'ID: ',
                        ),
                        CustomItemProfile(
                          value: '${responseUserSummary.user.email}',
                          titleValue: 'Profil: ',
                        ),
                        CustomItemProfile(
                          value: '${responseUserSummary.user.name}',
                          titleValue: 'Nom: ',
                        ),
                        CustomItemProfile(
                          value: '${responseUserSummary.user.surname}',
                          titleValue: 'surname: ',
                        ),
                        CustomItemProfile(
                          value: '',
                          titleValue: 'CNI/Passport: ',
                        ),
                        CustomItemProfile(
                          value: '${responseUserSummary.user.phone}',
                          titleValue: 'Telephone: ',
                        ),
                        CustomItemProfile(
                          value: '${responseUserSummary.user.city}',
                          titleValue: 'Ville: ',
                        ),
                        CustomItemProfile(
                          value: '${responseUserSummary.user.district}',
                          titleValue: 'Quartier: ',
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
          }),
        ));
  }
}
