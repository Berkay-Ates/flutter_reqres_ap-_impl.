import 'package:fake_api_usecase/core/enum/network_enums.dart';
import 'package:fake_api_usecase/core/init/network/interface/network_interface.dart';
import 'package:fake_api_usecase/core/init/network/network_connection_state.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/view_model/base_view_model.dart';

part 'home_model_view.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store, IBaseView {
  late INetworkConnectivity networkConnectivity;

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
