import '../../../enum/network_enums.dart';

typedef NetworkChangesCallback = void Function(NetworkEnums networkEnums);

abstract class INetworkConnectivity {
  //*connectivity results is future so its return type must be future,
  //* but instance of connectivity could be created immediately
  Future<NetworkEnums> checkConnectivity();
  void networkConnectivityChanges(NetworkChangesCallback onNetworkChanged);
  void dispose();
}
