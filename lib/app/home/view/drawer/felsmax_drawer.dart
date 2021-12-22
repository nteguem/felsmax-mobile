import 'package:feslmax_app/app/home/widget/custom_drawer_item.dart';
import 'package:feslmax_app/app/login_view/view/login_page.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:feslmax_app/utils/alert_dialog/custom_confirm_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'drawer_model/model_drawer.dart';

class FelsMaxDrawer extends StatefulWidget {
  final String amout;
  final String username;
  final String country;

  FelsMaxDrawer({
    this.amout = '0',
    this.username = 'Felsmax',
    this.country = 'Cameroun',
  });

  @override
  _FelsMaxDrawerState createState() => _FelsMaxDrawerState();
}

class _FelsMaxDrawerState extends State<FelsMaxDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black12, Colors.red[50]],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: heightHelper(context, 0.18, 0.2),
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Material(
                        elevation: 4,
                        color: Colors.transparent,
                        shadowColor: FelsmaxColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(AssetPath.user_profil),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(left: 25, top: 10),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: TranslatedMessages.general['sold'],
                                      style: FelsmaxTextStyles
                                          .contentTitleTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 14)),
                                  TextSpan(
                                      text: '${widget.amout} XAF',
                                      style: FelsmaxTextStyles
                                          .contentTitleTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 14)),
                                ]),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: heightHelper(context, 0.03, 0.05)),
                              child: Column(
                                children: [
                                  Text(
                                    widget.username,
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 05,
                                  ),
                                  Text(widget.country,
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                    padding:
                        EdgeInsets.only(left: widthHelper(context, 0.13, 0.05)),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  itemCount: modelDrawerList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          if (modelDrawerList[index].title ==
                              TranslatedMessages.general['sign_out']) {
                            customConfirmAlert(
                                context: context,
                                title:
                                    TranslatedMessages.general['disconnected'],
                                onYesAction: () {
                                  signOut();
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      LoginPage.routeName, (route) => false);
                                });
                          } else {
                            Navigator.popAndPushNamed(
                                context, modelDrawerList[index].routeName);
                          }
                        },
                        child: CustomDrawerItem(
                          text: modelDrawerList[index].title,
                          icon: modelDrawerList[index].iconData,
                          uriPathIcon: modelDrawerList[index].uriPathIcon ?? '',
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
