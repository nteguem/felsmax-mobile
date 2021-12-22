import 'package:feslmax_app/app/credit_transfer/model/transfer_credit_model.dart';
import 'package:feslmax_app/app/home/widget/custom_card.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';

class TransfertCreditView extends StatefulWidget {
  const TransfertCreditView({Key key}) : super(key: key);

  @override
  _TransfertCreditViewState createState() => _TransfertCreditViewState();
}

class _TransfertCreditViewState extends State<TransfertCreditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['credit_transfert']),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: List.generate(listOfTransferCredit.length, (index) {
            return Container(
              child: CustomCard(
                title: listOfTransferCredit[index].title,
                onTapPressed: () {},
                uriIamge: listOfTransferCredit[index].uriPath,
              ),
            );
          }),
        ),
      ),
    );
  }
}
