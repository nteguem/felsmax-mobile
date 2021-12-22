import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';

class CanalView extends StatefulWidget {
  const CanalView({Key key}) : super(key: key);

  @override
  _CanalViewState createState() => _CanalViewState();
}

class _CanalViewState extends State<CanalView> {
  TextEditingController _subscriptionNumberController = TextEditingController();
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['choose_forfait']),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: heightHelper(context, 0.1, 0.05),
                child: Image.asset(AssetPath.canal),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: widthHelper(context, 0.05, 0.05)),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                          controller: _subscriptionNumberController,
                          hintTextValue:
                              TranslatedMessages.general['subscription_number'],
                          prefixIcon: Icons.confirmation_number_outlined,
                          phoneCode: '',
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.search_rounded,
                            ),
                            onPressed: () {},
                          )),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: widthHelper(context, 0.05, 0.05)),
                child: CustomTextFormField(
                  controller: _searchController,
                  hintTextValue: TranslatedMessages.general['search'],
                  prefixIcon: Icons.search_rounded,
                  phoneCode: '',
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: widthHelper(context, 0.05, 0.05)),
                height: heightHelper(context, 0.6, 0.5),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('item $index'),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
