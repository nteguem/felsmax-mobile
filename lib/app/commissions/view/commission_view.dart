import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/core/widget/custom_date_form_field.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';

class CommissionView extends StatefulWidget {
  const CommissionView({Key key}) : super(key: key);

  @override
  _CommissionViewState createState() => _CommissionViewState();
}

class _CommissionViewState extends State<CommissionView> {
  TextEditingController _startDateController = TextEditingController();
  TextEditingController _endDateController = TextEditingController();
  int _length = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['commission']),
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: heightHelper(context, 0.3, 0.2),
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: heightHelper(context, 0.01, 0.01),
                      horizontal: widthHelper(context, 0.01, 0.01)),
                  child: Column(
                    children: [
                      CustomDateFormField(
                        prefixIcon: Icons.calendar_today,
                        controller: _startDateController,
                        hintTextValue: TranslatedMessages.general['start_date'],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: heightHelper(context, 0.01, 0.01)),
                        child: CustomDateFormField(
                          prefixIcon: Icons.calendar_today,
                          controller: _endDateController,
                          hintTextValue: TranslatedMessages.general['end_date'],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            CustomButton(
                                onPressedHandler: () {},
                                btnTitle:
                                    TranslatedMessages.general['all_service']),
                            Spacer(),
                            CustomButton(
                                onPressedHandler: () {},
                                btnTitle: TranslatedMessages
                                    .general['filter_operation']),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: _length > 0
                    ? ListView.builder(
                        itemCount: _length,
                        itemBuilder: (context, index) {
                          return Container();
                        })
                    : Container(
                        child: Center(
                          child: Image.asset(
                            AssetPath.empty_file_list,
                            height: heightHelper(context, 0.15, 0.05),
                          ),
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: heightHelper(context, 0.05, 0.1),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: FelsmaxColors.blackColor,
          child: Icon(
            Icons.double_arrow_sharp,
            size: 15,
          ),
        ),
      ),
    );
  }
}
