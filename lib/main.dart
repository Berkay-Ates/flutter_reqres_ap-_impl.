import 'package:fake_api_usecase/core/init/theme/generic_theme/generic_apptheme.dart';
import 'package:fake_api_usecase/view/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'core/init/theme/dark_theme/theme/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: GenericAppTheme<AppDarkTheme>(AppDarkTheme()).theme,
      home: const LoginHomeView(),
    );
  }
}
