import 'package:dio/dio.dart';

class NetworkServiceInstance {
  static NetworkServiceInstance? _serviceInstance;
  late final Dio _dio;
  static String baseUrl = 'https://reqres.in/api';

  NetworkServiceInstance._() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

  static NetworkServiceInstance get instance {
    _serviceInstance ??= NetworkServiceInstance._();
    return _serviceInstance!;
  }

  Dio get dio => _dio;
}

class EagerSingleton {
  // ignore: prefer_final_fields
  static EagerSingleton _instace = EagerSingleton._init();
  static EagerSingleton get instance => _instace;
  EagerSingleton._init();
}

class LazySingleton {
  static LazySingleton? _instace;
  static LazySingleton? get instance {
    // ignore: unnecessary_null_comparison, prefer_conditional_assignment
    if (_instace == null) _instace = LazySingleton._init();
    return _instace;
  }

  LazySingleton._init();
}
