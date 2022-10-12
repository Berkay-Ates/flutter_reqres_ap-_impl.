import 'package:dio/dio.dart';
import 'package:fake_api_usecase/core/init/network/service/service_interface/service_singleton.dart';
import 'package:fake_api_usecase/view/home/model/home_model.dart';

abstract class IServiceScenarios {
  Dio dioScenarios = NetworkServiceInstance.instance.dio;
  Future<HomeModel?> getUsers();
}
