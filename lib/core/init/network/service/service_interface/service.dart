import 'package:dio/dio.dart';
import 'package:fake_api_usecase/core/init/network/service/service_interface/service_singleton.dart';

class NetworkTest {
  NetworkTest() {
    NetworkServiceInstance service = NetworkServiceInstance.instance;
    Dio? dioFromServiceInstance = service.dio;
  }
}
