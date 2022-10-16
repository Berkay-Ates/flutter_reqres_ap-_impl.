import 'dart:developer';
import 'package:fake_api_usecase/core/enum/network_enums.dart';
import 'package:fake_api_usecase/core/enum/shared_enums.dart';
import 'package:fake_api_usecase/core/init/cache/shared_manager/shared_List_manager.dart';
import 'package:fake_api_usecase/core/init/cache/shared_manager/shared_manager.dart';
import 'package:fake_api_usecase/core/init/cache/singletonSharedPref/singleton_cache.dart';
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
  late SingletonSharedObject _singletonSharedObject;
  late SharedManager sharedManager;

  @observable
  SharedListManager? sharedListManager;

  @observable
  HomeModel? homeViewUsers;

  @observable
  List<Data?>? userData = [];

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
    initSharedStuff();
  }

  @action
  Future<bool> saveModelViewListUsers(SharedEnums key) async {
    if (isLoading == false && sharedListManager != null) {
      changeLoading();
      if (userData?.isNotEmpty == true) {
        bool result = await sharedListManager!.saveListUsers(userData, key);
        inspect(result);
        changeLoading();
        return result;
      }
    }
    changeLoading();
    return false;
  }

  @action
  void getCachedUsers(SharedEnums key) {
    if (sharedListManager != null) {
      List<Data?>? savedUsers = sharedListManager!.getListUsers(key);
      if (savedUsers?.isNotEmpty ?? false) {
        inspect(savedUsers);
        print('here was worked');
        userData = savedUsers;
      }
    }
  }

  @action
  Future<void> initSharedStuff() async {
    _singletonSharedObject = SingletonSharedObject.singletonObject;
    final preferences = await _singletonSharedObject.initSharedPreferences;
    sharedManager = SharedManager(sharedPref: preferences);
    sharedListManager = SharedListManager(sharedManager: sharedManager);
  }

  @action
  Future<void> getUsersGeneric() async {
    if (isLoading == false) {
      changeLoading();
      homeViewUsers = await getUserInfoGenericServiceUsecase.getUsersGenericScenario();
      userData = homeViewUsers?.data ?? [];
      changeLoading();
    }
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future checkFirstTimeConnectivity() async {
    networkEnums = await networkConnectivity.checkConnectivity();
  }
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
