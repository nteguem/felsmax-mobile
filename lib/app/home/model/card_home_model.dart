import 'package:feslmax_app/app/credit_card/view/see_user_card_page.dart';
import 'package:feslmax_app/app/credit_transfer/view/transfert_credit_page.dart';
import 'package:feslmax_app/app/deposit_withdrawal/view/deposit_withdrawl_page.dart';
import 'package:feslmax_app/app/pay_facture/view/pay_facture_page.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';

class CardHomeModel {
  String uriPath;
  String title;
  String routeName;

  CardHomeModel({
    this.uriPath,
    this.title,
    this.routeName,
  });
}

List<CardHomeModel> listOfItem = [
  CardHomeModel(
    title: TranslatedMessages.general['depot_credit'],
    uriPath: AssetPath.depot_remove,
    routeName: DepositAndWithdrawelPage.routeName,
  ),
  CardHomeModel(
    title: TranslatedMessages.general['credit'],
    uriPath: AssetPath.credit,
    routeName: TransfertCreditPage.routeName,
  ),
  CardHomeModel(
    title: TranslatedMessages.general['facture'],
    uriPath: AssetPath.paiement_facture,
    routeName: PayFacturePage.routeName,
  ),
  CardHomeModel(
      title: TranslatedMessages.general['carte_credit'],
      uriPath: AssetPath.carte,
      routeName: SeeUserCardPage.routeName),
];
