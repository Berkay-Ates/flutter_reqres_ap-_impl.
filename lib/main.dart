import 'dart:developer';

import 'package:fake_api_usecase/core/init/network/network_connection_state.dart';
import 'package:fake_api_usecase/core/init/theme/generic_theme/generic_apptheme.dart';
import 'package:fake_api_usecase/view/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'core/init/theme/dark_theme/theme/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> getConnection() async {
    inspect(await NetworkConnectivity().checkConnectivity());
  }

  @override
  Widget build(BuildContext context) {
    getConnection();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: GenericAppTheme<AppDarkTheme>(AppDarkTheme()).theme,
      home: const HomeView(),
    );
  }
}
