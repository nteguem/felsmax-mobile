import 'package:feslmax_app/app/credit_my_account/model/deposit_dto.dart';
import 'package:feslmax_app/core/api_services/service/abstract_repository.dart';
import 'package:feslmax_app/core/api_services/service/abstract_summary.dart';

class MakeTransactionRepository extends AbstractRepository {
  Future depositTransaction({DepositDto depositDto, String userId}) async {
    final String path =
        '/${getControllerName()}account/make-transaction/$userId';
    final response = await apiManager.postDynamic(await getAuthToken(), path,
        data: depositDto.toJson());
    TransactionInitSummary _transactionInitSummary =
        TransactionInitSummary.fromJson(response.toString());
    return _transactionInitSummary;
  }

  Future checkTransaction({CheckTransactionDto checkTransactionDto}) async {
    final String path = '/${getControllerName()}account/check-transaction';
    final response = await apiManager.postDynamic(await getAuthToken(), path,
        data: checkTransactionDto.toJson());
    DepositSummaryDto _depositSummaryDto =
        DepositSummaryDto.fromJson(response.toString());
    return _depositSummaryDto;
  }

  @override
  String getControllerName() {
    return 'user/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
