import 'package:feslmax_app/app/home/model/user_summary_dto.dart';
import 'package:feslmax_app/core/api_services/service/abstract_repository.dart';
import 'package:feslmax_app/core/api_services/service/abstract_summary.dart';

class UserRepository extends AbstractRepository {
  Future userProfile() async {
    final String path = '/${getControllerName()}profile';
    final response = await apiManager.getDynamic(await getAuthToken(), path);
    UserSummaryDto _response = UserSummaryDto.fromJson(response.toString());
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
