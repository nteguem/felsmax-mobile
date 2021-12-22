import 'package:feslmax_app/app/credit_my_account/view/make_transaction_view/make_transaction_page.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/operator.dart';
import 'package:feslmax_app/constants/translated_messages.dart';

class ModelActionDepositOrWithdrawl {
  String uriPath;
  String title;
  String routeName;
  String transactionType;
  String operator;

  ModelActionDepositOrWithdrawl({
    this.uriPath,
    this.title,
    this.routeName,
    this.operator,
    this.transactionType,
  });
}

List<ModelActionDepositOrWithdrawl> depositWitdrawlList = [
  ModelActionDepositOrWithdrawl(
      uriPath: AssetPath.orange_money,
      operator: Operator.ORANGE_MONEY,
      routeName: MakeTransactionPage.routeName,
      title: TranslatedMessages.general['orange_money']),
  ModelActionDepositOrWithdrawl(
      uriPath: AssetPath.mobile_money,
      operator: Operator.MTN_MONEY,
      routeName: MakeTransactionPage.routeName,
      title: TranslatedMessages.general['mobile_money']),
  ModelActionDepositOrWithdrawl(
      uriPath: AssetPath.nextell_money,
      routeName: MakeTransactionPage.routeName,
      title: TranslatedMessages.general['nextell_money']),
];
