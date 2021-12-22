import 'package:feslmax_app/app/login_view/model/login_dto.dart';
import 'package:feslmax_app/core/api_services/service/abstract_repository.dart';
import 'package:feslmax_app/core/api_services/service/abstract_summary.dart';

class LoginRepository extends AbstractRepository {
  Future loginUser({LoginDto loginDto}) async {
    final String path = '/${getControllerName()}login';
    final response = await apiManager.postDynamic(await getAuthToken(), path,
        data: loginDto.toJson());
    LoginSummaryDto _response = LoginSummaryDto.fromJson(response.toString());
    setAuthToken(_response.response.accessToken);
    return _response;
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
