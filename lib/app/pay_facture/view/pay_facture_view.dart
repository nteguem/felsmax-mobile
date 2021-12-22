import 'package:feslmax_app/app/home/widget/custom_card.dart';
import 'package:feslmax_app/app/pay_facture/model/pay_facture.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:flutter/material.dart';

class PayFactureView extends StatefulWidget {
  const PayFactureView({Key key}) : super(key: key);

  @override
  _PayFactureViewState createState() => _PayFactureViewState();
}

class _PayFactureViewState extends State<PayFactureView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['pay_facture']),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: List.generate(payFactureList.length, (index) {
            return Container(
              child: CustomCard(
                title: payFactureList[index].title,
                onTapPressed: () {
                  Navigator.pushNamed(context, payFactureList[index].routeName);
                },
                uriIamge: payFactureList[index].uriPath,
              ),
            );
          }),
        ),
      ),
    );
  }
}
