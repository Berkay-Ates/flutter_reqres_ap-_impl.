import 'dart:convert';
import 'package:fake_api_usecase/core/enum/shared_enums.dart';
import 'package:fake_api_usecase/core/init/cache/shared_manager/shared_manager.dart';
import '../../../../view/home/model/home_model.dart';

class SharedListManager {
  final SharedManager sharedManager;

  SharedListManager({required this.sharedManager});

  Future<bool> saveListUsers(List<Data?>? users, SharedEnums key) async {
    if (users?.isNotEmpty ?? false) {
      final userLists = users?.map((e) => jsonEncode(e!.toJson())).toList();
      return await sharedManager.saveUsersToShared(userLists!, key);
    }
    return false;
  }

  List<Data?>? getListUsers(SharedEnums key) {
    List<String>? savedUsers = sharedManager.getSavedUser(key);
    if (savedUsers?.isNotEmpty ?? false) {
      return savedUsers!.map((e) {
        final jsonUser = jsonDecode(e);
        if (jsonUser is Map<String, dynamic>) {
          return Data.fromJson(jsonUser);
        }
      }).toList();
    }
    return null;
    //? return _savedUsers.map((e) => Data.fromJson(jsonDecode(e))).toList(); --> NOT SAFETY
  }
}
