import 'package:shared_preferences/shared_preferences.dart';

import '../../../enum/shared_enums.dart';
import '../error/shared_custom_error.dart';

class SharedManager {
  SharedPreferences? sharedPref;
  late final SharedCustomError sharedCustomError;

  SharedManager({this.sharedPref}) {
    sharedCustomError = SharedCustomError();
  }

  void checkSharedPref() {
    if (sharedPref == null) {
      throw sharedCustomError.toString();
    }
  }

  Future<bool> saveUsersToShared(List<String> value, SharedEnums key) async {
    checkSharedPref();
    return (await sharedPref?.setStringList(key.name, value) ?? false);
  }

  List<String>? getSavedUser(SharedEnums key) {
    checkSharedPref();
    return sharedPref?.getStringList(key.name);
  }

  Future<bool> deleteSavedItems(SharedEnums key) async {
    checkSharedPref();
    return await sharedPref?.remove(key.name) ?? false;
  }
}
