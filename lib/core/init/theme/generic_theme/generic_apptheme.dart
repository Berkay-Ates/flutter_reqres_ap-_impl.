import 'package:flutter/material.dart';

class ExampleUsageOfGenericTheme {
  final ThemeData? _exampleLightData = GenericAppTheme<GenericLightTheme>(GenericLightTheme()).theme;
}

class GenericAppTheme<T extends IGenericAppTheme> {
  GenericAppTheme(T appTheme) : _appTheme = appTheme;
  final T _appTheme;
  ThemeData? get theme => _appTheme.appTheme;
}

abstract class IGenericAppTheme {
  ThemeData? get appTheme;
}

class GenericLightThemeArguments {
  static GenericLightThemeArguments? _instance;
  static GenericLightThemeArguments? get instance {
    _instance ??= GenericLightThemeArguments._();
    return _instance;
  }

  Color myWhiteColor = Colors.black12;
  GenericLightThemeArguments._();
}

abstract class GenericLightThemeAbstractSingletonInstance {
  GenericLightThemeArguments? genericLightThemeArguments = GenericLightThemeArguments.instance;
}

class GenericLightTheme extends IGenericAppTheme with GenericLightThemeAbstractSingletonInstance {
  @override
  ThemeData? get appTheme =>
      ThemeData.dark().copyWith(scaffoldBackgroundColor: genericLightThemeArguments!.myWhiteColor);
}
