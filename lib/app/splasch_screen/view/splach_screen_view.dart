import 'package:feslmax_app/app/home/view/home_page.dart';
import 'package:feslmax_app/app/login_view/view/login_page.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/preferences_key.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplachScreenView extends StatefulWidget {
  const SplachScreenView({Key key}) : super(key: key);

  @override
  _SplachScreenViewState createState() => _SplachScreenViewState();
}

class _SplachScreenViewState extends State<SplachScreenView> {
  String _bearerToken;

  _verifyIfBearerTokenExist() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _bearerToken = preferences.getString(PreferencesKeys.tokenBearerKey);
    if (_bearerToken != null) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(HomePage.routeName, (route) => false);
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
      });
    }
  }

  @override
  void initState() {
    _verifyIfBearerTokenExist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  AssetPath.felsmax_logo,
                  width: widthHelper(context, 0.5, 0.5),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: heightHelper(context, 0.05, 0.1)),
                child: Image.asset(
                  AssetPath.loader,
                  width: widthHelper(context, 0.1, 0.5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
