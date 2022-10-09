import 'package:flutter/material.dart';

class DarkThemeArguments {
  static DarkThemeArguments? _darkThemeArgumentsInstance;
  static DarkThemeArguments? get darkThemeArguments {
    _darkThemeArgumentsInstance ??= DarkThemeArguments._();
    return _darkThemeArgumentsInstance;
  }

  DarkThemeArguments._();

  final Color lightGray = const Color(0xfff1f3f8);
  final Color gray = const Color(0xffa5a6ae);
  final Color darkGray = const Color(0xff676870);

  final Color black = const Color(0xff020306);
  final Color black12 = const Color(0x1f000000);
  final Color blackShadow = const Color(0x3d000000);

  final Color red = const Color(0xffc70137);
  final Color darkRed = const Color(0x80c70137);
}
