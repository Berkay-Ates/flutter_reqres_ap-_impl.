import 'package:shared_preferences/shared_preferences.dart';

class SingletonSharedObject {
  static final SingletonSharedObject _singletonObject = SingletonSharedObject._();
  static SingletonSharedObject get singletonObject => _singletonObject;

  SharedPreferences? _sharedPreferences;
  SharedPreferences? get sharedPreferences => _sharedPreferences;

  Future<void> initSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  SingletonSharedObject._();
}
