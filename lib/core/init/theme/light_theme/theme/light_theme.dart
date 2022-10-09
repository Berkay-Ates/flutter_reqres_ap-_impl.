import 'package:fake_api_usecase/core/init/theme/light_theme/light_theme_interface.dart';
import 'package:fake_api_usecase/core/init/theme/Interface/theme_interface.dart';
import 'package:flutter/material.dart';

class AppLightTheme extends IAppTheme with ILightThemeArguments {
  @override
  ThemeData? get appTheme => ThemeData.light().copyWith(
        errorColor: lightThemeArguments!.darkGray,
        indicatorColor: lightThemeArguments!.lightGreen,
      );
}
