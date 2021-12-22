import 'package:flutter/material.dart';

class CustomItemProfile extends StatelessWidget {
  final String titleValue;
  final String value;

  CustomItemProfile({this.titleValue, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Row(
          children: [
            Container(
              child: Text(titleValue),
            ),
            Container(
              child: Text(value),
            ),
          ],
        ),
        subtitle: Divider(),
      ),
    );
  }
}
