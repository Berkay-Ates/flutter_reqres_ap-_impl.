import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkEnums {
  offline,
  online;

  static NetworkEnums getNetworkResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.bluetooth:
        return NetworkEnums.offline;

      case ConnectivityResult.wifi:
        return NetworkEnums.online;

      case ConnectivityResult.ethernet:
        return NetworkEnums.offline;

      case ConnectivityResult.mobile:
        return NetworkEnums.online;

      case ConnectivityResult.none:
        return NetworkEnums.offline;
    }
  }
}
