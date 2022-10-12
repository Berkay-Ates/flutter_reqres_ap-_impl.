import 'package:fake_api_usecase/core/enum/network_enums.dart';
import 'package:fake_api_usecase/view/home/service/get_user_scnario.dart';
import 'package:fake_api_usecase/view/home/service/service_instance.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base/view_model/base_view_interface.dart';
import '../../../core/init/network/connectivity/interface/network_connection_state.dart';
import '../../../core/init/network/connectivity/network_interface.dart';
import '../model/home_model.dart';

part 'home_model_view.g.dart';

// ignore: library_private_types_in_public_api
class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store, IBaseView {
  late INetworkConnectivity networkConnectivity;
  final getUserInfoGenericServiceUsecase = ServiceRequests<GetUserInfo>(GetUserInfo());

  @observable
  HomeModel? homeViewUsers;

  @observable
  List<Data>? userData = [];

  @observable
  NetworkEnums? networkEnums;

  @observable
  bool isLoading = false;

  @override
  void setContext(context) => buildContext = context;

  @override
  void init() {
    networkConnectivity = NetworkConnectivity();
    checkFirstTimeConnectivity();
    getUsersGeneric();
  }

  @action
  Future<void> getUsersGeneric() async {
    changeLoading();
    homeViewUsers = await getUserInfoGenericServiceUsecase.getUsersGenericScenario();
    userData = homeViewUsers?.data ?? [];
    changeLoading();
  }

  // @action
  // Future<void> getUserInfo() async {
  //   changeLoading();
  //   final response = await networkServiceInstance.dio.get('/users?page=2');
  //   final responseBody = response.data;
  //   if (responseBody is Map<String, dynamic>) {
  //     homeViewUsers = HomeModel.fromJson(responseBody);
  //     userData = homeViewUsers?.data ?? [];
  //   }
  //   changeLoading();
  // }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future checkFirstTimeConnectivity() async {
    networkEnums = await networkConnectivity.checkConnectivity();
  }
}
