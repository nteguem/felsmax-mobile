import 'package:feslmax_app/app/sign_up/model/register_dto.dart';
import 'package:feslmax_app/core/api_services/service/abstract_repository.dart';
import 'package:feslmax_app/core/api_services/service/abstract_summary.dart';
import 'package:feslmax_app/core/serveur_message_model/server_response.dart';

class SignUpRepository extends AbstractRepository {
  Future userSignUp({RegisterDto userReqDto}) async {
    final String path = '/${getControllerName()}register';
    final response = await apiManager.postDynamic(await getAuthToken(), path,
        data: userReqDto.toJson());
    ServerResponse _response = ServerResponse.fromJson(response.toString());
    return _response;
  }

  Future userVerification() async {}

  @override
  String getControllerName() {
    return 'user/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
