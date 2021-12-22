import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  final Icon icon;
  final String uriPathIcon;
  final String text;
  final Function onTapHandler;

  CustomDrawerItem({
    this.icon,
    this.uriPathIcon = '',
    this.text,
    this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapHandler,
      child: Container(
        child: Row(
          children: [
            uriPathIcon.isEmpty
                ? icon
                : Tab(
                    icon: Image.asset(
                      uriPathIcon,
                      width: 24,
                      height: 24,
                    ),
                  ),
            SizedBox(
              width: widthHelper(context, 0.05, 0.02),
            ),
            Expanded(child: Text(text)),
          ],
        ),
      ),
    );
  }
}
