import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String userId;
  final String amount;
  final String bonus;
  final Function onPressedHandler;

  CustomHeader({
    this.userId,
    this.amount,
    this.bonus = '...',
    this.onPressedHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: FelsmaxColors.blackColor,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    userId ?? '...',
                    style: FelsmaxTextStyles.hintTextStyle
                        .copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    '$amount XAF' ?? '...',
                    style: FelsmaxTextStyles.hintTextStyle
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    '${TranslatedMessages.general['bonus']} $bonus XAF' ??
                        '...',
                    style: FelsmaxTextStyles.hintTextStyle
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: FelsmaxColors.primaryColor,
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Text(
                        TranslatedMessages.general['user'],
                        style: FelsmaxTextStyles.hintTextStyle.copyWith(
                            color: FelsmaxColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: onPressedHandler,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.upgrade,
                            color: FelsmaxColors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        Text(TranslatedMessages.general['go_up'],
                            style: FelsmaxTextStyles.hintTextStyle.copyWith(
                                color: FelsmaxColors.primaryColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
