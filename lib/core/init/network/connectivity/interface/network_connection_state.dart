import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fake_api_usecase/core/enum/network_enums.dart';

import '../network_interface.dart';

class NetworkConnectivity extends INetworkConnectivity {
  late final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _subscription;

  NetworkConnectivity() {
    _connectivity = Connectivity();
  }

  @override
  Future<NetworkEnums> checkConnectivity() async {
    final ConnectivityResult result = await _connectivity.checkConnectivity();
    return NetworkEnums.getNetworkResult(result);
  }

  @override
  void networkConnectivityChanges(NetworkChangesCallback onNetworkChanged) {
    _subscription = _connectivity.onConnectivityChanged.listen((event) async {
      onNetworkChanged.call(NetworkEnums.getNetworkResult(event));
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
