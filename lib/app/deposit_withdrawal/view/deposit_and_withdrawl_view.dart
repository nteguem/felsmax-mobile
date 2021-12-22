import 'package:feslmax_app/app/deposit_withdrawal/model/custom_model_action.dart';
import 'package:feslmax_app/app/home/widget/custom_card.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:flutter/material.dart';

class DepositAndWithdrawlView extends StatefulWidget {
  const DepositAndWithdrawlView({Key key}) : super(key: key);

  @override
  _DepositAndWithdrawlViewState createState() =>
      _DepositAndWithdrawlViewState();
}

class _DepositAndWithdrawlViewState extends State<DepositAndWithdrawlView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['deposit_withdrawl']),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            children: List.generate(depositWitdrawlList.length, (index) {
              return Container(
                child: CustomCard(
                  title: depositWitdrawlList[index].title,
                  onTapPressed: () {},
                  uriIamge: depositWitdrawlList[index].uriPath,
                ),
              );
            })),
      ),
    );
  }
}
