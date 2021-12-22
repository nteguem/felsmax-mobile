import 'package:feslmax_app/app/pay_facture/view/canal+/canal_+_page.dart';
import 'package:feslmax_app/app/pay_facture/view/pay_eneo/pay_eneo_page.dart';
import 'package:feslmax_app/constants/assets_path.dart';
import 'package:feslmax_app/constants/translated_messages.dart';

class PayFacture {
  String uriPath;
  String title;
  String routeName;

  PayFacture({
    this.uriPath,
    this.title,
    this.routeName,
  });
}

List<PayFacture> payFactureList = [
  PayFacture(
      title: TranslatedMessages.general['eneo'],
      uriPath: AssetPath.eneo,
      routeName: PayEneoPage.routeName),
  PayFacture(
    title: TranslatedMessages.general['cde'],
    uriPath: AssetPath.cde,
  ),
  PayFacture(
    title: TranslatedMessages.general['canal_+'],
    uriPath: AssetPath.canal,
    routeName: CanalPage.routeName,
  ),
];
