import 'package:fake_api_usecase/core/init/theme/Interface/theme_interface.dart';
import 'package:fake_api_usecase/core/init/theme/dark_theme/dark_theme_interface.dart';
import 'package:flutter/src/material/theme_data.dart';

class AppDarkTheme extends IAppTheme with IDarkThemeInterface {
  @override
  ThemeData? get appTheme => ThemeData.dark().copyWith(
        errorColor: darkThemeArguments!.darkGray,
        indicatorColor: darkThemeArguments!.lightGray,
      );
}
