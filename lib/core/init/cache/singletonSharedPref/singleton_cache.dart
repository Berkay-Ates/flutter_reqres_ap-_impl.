import 'package:shared_preferences/shared_preferences.dart';

class SingletonSharedObject {
  static final SingletonSharedObject _singletonObject = SingletonSharedObject._();
  static SingletonSharedObject get singletonObject => _singletonObject;

  SharedPreferences? _sharedPreferences;
  SharedPreferences? get sharedPreferences => _sharedPreferences;

  Future<SharedPreferences?> get initSharedPreferences async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    return _sharedPreferences;
  }

  SingletonSharedObject._();
}
