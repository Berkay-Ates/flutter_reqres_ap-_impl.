import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fake_api_usecase/core/enum/network_enums.dart';
import 'package:fake_api_usecase/core/init/network/interface/network_interface.dart';

class NetworkConnectivity extends INetworkConnectivity with NetworkConnectivityEnumMixin {
  late final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _subscription;

  NetworkConnectivity() {
    _connectivity = Connectivity();
  }

  @override
  Future<NetworkEnums> checkConnectivity() async {
    final ConnectivityResult result = await _connectivity.checkConnectivity();
    return getNetworkResult(result);
  }

  @override
  void networkConnectivityChanges(NetworkChangesCallback onNetworkChanged) {
    _subscription = _connectivity.onConnectivityChanged.listen((event) async {
      onNetworkChanged.call(getNetworkResult(event));
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
