import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';

class TransferCreditModel {
  String title;
  String uriPath;
  String routeName;

  TransferCreditModel({
    this.title,
    this.uriPath,
    this.routeName,
  });
}

List<TransferCreditModel> listOfTransferCredit = [
  TransferCreditModel(
    title: TranslatedMessages.general['orange_airtime'],
    uriPath: AssetPath.orange_airtime,
  ),
  TransferCreditModel(
    title: TranslatedMessages.general['mtn_airtime'],
    uriPath: AssetPath.mtn_airtime,
  ),
  TransferCreditModel(
    title: TranslatedMessages.general['nextell_airtime'],
    uriPath: AssetPath.nextell_airtime,
  ),
  TransferCreditModel(
    title: TranslatedMessages.general['yoomee_airtime'],
    uriPath: AssetPath.yoomee_airtime,
  ),
  TransferCreditModel(
    title: TranslatedMessages.general['camtel_airtime'],
    uriPath: AssetPath.camtel_airtime,
  ),
];
