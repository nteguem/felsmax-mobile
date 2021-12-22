import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCard extends StatelessWidget {
  final String uriIamge;
  final String title;
  final Function onTapPressed;

  CustomCard({
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
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  height: heightHelper(context, 0.1, 0.05),
                  // width: widthHelper(context, 0.15, 0.05),
                  child: Image.asset(uriIamge),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: heightHelper(context, 0.02, 0.05),
                      left: widthHelper(context, 0.02, 0.02),
                      right: widthHelper(context, 0.02, 0.02)),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: FelsmaxTextStyles.contentTitleTextStyle.copyWith(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
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
