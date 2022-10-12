import 'package:fake_api_usecase/view/home/service/service_interface.dart';

import '../model/home_model.dart';

class GetUserInfo extends IServiceScenarios {
  @override
  Future<HomeModel?> getUsers() async {
    final response = await dioScenarios.get('/users?page=2');
    final responseBody = response.data;
    if (responseBody is Map<String, dynamic>) {
      return HomeModel.fromJson(responseBody);
    }
    return null;
  }
}
