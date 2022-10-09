import 'package:flutter/material.dart';

class LightThemeArgument {
  static LightThemeArgument? _lightTheme;
  static LightThemeArgument? get lightTheme {
    _lightTheme ??= LightThemeArgument._();
    return _lightTheme;
  }

  LightThemeArgument._();

  final Color white = const Color(0xffffffff);

  final Color lightGray = const Color(0xfff1f3f8);
  final Color gray = const Color(0xffa5a6ae);
  final Color darkGray = const Color(0xff676870);

  final Color black = const Color(0xff020306);
  final Color black12 = const Color(0x1f000000);
  final Color blackShadow = const Color(0x3d000000);

  final Color red = const Color(0xffc70137);
  final Color darkRed = const Color(0x80c70137);

  final Color lightGreen = const Color(0xff00C569);
  final Color forestGreen = const Color(0xff228B22);
  final Color green = const Color(0xff008000);
  final Color darkGreen = const Color(0xff1B512D);
}
