import 'package:fake_api_usecase/view/home/model/home_model.dart';
import 'package:fake_api_usecase/view/home/service/service_interface.dart';

class ServiceRequests<T extends IServiceScenarios> {
  final T urlScenario;

  ServiceRequests(this.urlScenario);

  Future<HomeModel?> getUsersGenericScenario() async {
    return await urlScenario.getUsers();
  }

  Future<HomeModel?> getUsersOnlyName() async {
    //* service'lerin tum senaryolarını ortak olarak bir abstract classtan turettik
    //* sonrasında bu abstract classtan tureyen classlar turunde instance alan bir
    //* arayuz yazarak service'den gelen verileri ortak bir islemden gecirerek
    //* karsı tarafa iletme yetkisine sahip olduk veya daha generic kod yazdık
    return urlScenario.getUsers();
  }
}
