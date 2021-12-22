library serializers;

// import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:feslmax_app/app/credit_my_account/model/deposit_dto.dart';
import 'package:feslmax_app/app/home/model/user_summary_dto.dart';
import 'package:feslmax_app/app/login_view/model/login_dto.dart';
import 'package:feslmax_app/app/sign_up/model/register_dto.dart';
import 'package:feslmax_app/core/serveur_message_model/server_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  RegisterDto,
  ServerResponse,
  Response,
  LoginDto,
  LoginSummaryDto,
  ResponseLogin,
  UserSummaryDto,
  ResponseUserSummary,
  UserSummary,
  DepositDto,
  TransactionInitSummary,
  TransactionInitSummaryPayment,
  CheckTransactionDto,
  DepositSummaryDtoTransaction,
  DepositSummaryDto
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
