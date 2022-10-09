import 'package:fake_api_usecase/core/init/theme/Interface/theme_interface.dart';
import 'package:flutter/material.dart';

class GenericAppTheme<T extends IAppTheme> {
  GenericAppTheme(T appTheme) : _appTheme = appTheme;
  final T _appTheme;
  ThemeData? get theme => _appTheme.appTheme;
}
