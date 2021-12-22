import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';
import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:feslmax_app/core/widget/custom_button.dart';
import 'package:feslmax_app/core/widget/custom_text_form_field.dart';
import 'package:feslmax_app/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PayEneoView extends StatefulWidget {
  const PayEneoView({Key key}) : super(key: key);

  @override
  _PayEneoViewState createState() => _PayEneoViewState();
}

class _PayEneoViewState extends State<PayEneoView> {
  TextEditingController _subscriptionNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslatedMessages.general['pay_facture']),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: widthHelper(context, 0.05, 0.05),
              vertical: heightHelper(context, 0.05, 0.05)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: heightHelper(context, 0.1, 0.05),
                child: Image.asset(AssetPath.eneo),
              ),
              SizedBox(
                height: heightHelper(context, 0.02, 0.01),
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      child: CustomTextFormField(
                        controller: _subscriptionNumberController,
                        hintTextValue:
                            TranslatedMessages.general['subscription_number'],
                        prefixIcon: Icons.confirmation_number_outlined,
                        phoneCode: '',
                      ),
                    ),
                    SizedBox(
                      height: heightHelper(context, 0.02, 0.01),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                                onPressedHandler: () {},
                                btnTitle: TranslatedMessages.general['cancel']),
                          ),
                          SizedBox(
                            width: widthHelper(context, 0.01, 0.01),
                          ),
                          Expanded(
                            child: CustomButton(
                                btnColor: FelsmaxColors.blackColor,
                                onPressedHandler: () {},
                                btnTitle:
                                    TranslatedMessages.general['continue']),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
