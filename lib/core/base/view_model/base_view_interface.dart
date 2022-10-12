import 'package:flutter/material.dart';
import '../../init/network/service/service_interface/service_singleton.dart';

abstract class IBaseView {
  //Singleton network objesi olmalı
  NetworkServiceInstance networkServiceInstance = NetworkServiceInstance.instance;
  //Singleton Navigation objesi olmalı

  late BuildContext buildContext;

  late BuildContext baseContext;
  void setContext(BuildContext context);
  void init();
}
