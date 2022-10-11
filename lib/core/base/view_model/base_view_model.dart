import 'package:flutter/material.dart';

abstract class IBaseView {
  //Singleton network objesi olmalı
  //Singleton Navigation objesi olmalı

  late BuildContext buildContext;

  late BuildContext baseContext;
  void setContext(BuildContext context);
  void init();
}
