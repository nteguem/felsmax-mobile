import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCardCreditMyAccount extends StatelessWidget {
  final String uriIamge;
  final String title;
  final Function onTapPressed;

  CustomCardCreditMyAccount({
    this.uriIamge,
    this.title,
    this.onTapPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapPressed,
      child: Container(
        height: heightHelper(context, 0.08, 0.05),
        child: Card(
          child: Container(
            // padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(uriIamge),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.only(left: widthHelper(context, 0.02, 0.01)),
                    child: Text(
                      title,
                      style: FelsmaxTextStyles.contentTitleTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
