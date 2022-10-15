import 'package:fake_api_usecase/core/init/theme/light_theme/theme/light_theme.dart';
import 'package:fake_api_usecase/view/home/view/home_view.dart';
import 'package:flutter/material.dart';

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
      theme: AppLightTheme().appTheme,
      home: const HomeView(),
    );
  }
}
