import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/felsmax_color.dart';
import 'package:flutter/material.dart';

class SeeUserCardView extends StatefulWidget {
  const SeeUserCardView({Key key}) : super(key: key);

  @override
  _SeeUserCardViewState createState() => _SeeUserCardViewState();
}

class _SeeUserCardViewState extends State<SeeUserCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: FelsmaxColors.blackColor,
        child: Icon(Icons.credit_card_outlined),
      ),
      appBar: AppBar(
        title: Text(TranslatedMessages.general['my_cards']),
      ),
      body: Container(),
    );
  }
}
