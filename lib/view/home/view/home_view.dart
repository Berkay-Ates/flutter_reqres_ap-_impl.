import 'dart:developer';

import 'package:fake_api_usecase/core/base/view/base_view.dart';
import 'package:fake_api_usecase/core/enum/network_enums.dart';
import 'package:fake_api_usecase/view/home/model_view/home_model_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(), //* init state'i altında verdigimiz model viewu bize geri donduruyor
      onModelReady: (modelView) {
        modelView.setContext(context);
        modelView.init();
        modelView.networkConnectivity.networkConnectivityChanges((networkEnums) {
          modelView.networkEnums = networkEnums;
          inspect(networkEnums);
        });
      },
      onPageBuilder: ((BuildContext context, HomeViewModel modelView) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.person_add_alt),
            onPressed: () {
              modelView.getUsersGeneric();
            },
          ),
          body: Observer(
            builder: (_) => (modelView.networkEnums == NetworkEnums.offline)
                ? const Center(child: Text('no internet'))
                : (modelView.isLoading == true)
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: modelView.userData?.length ?? 0,
                        itemBuilder: ((context, index) => ListTile(
                              title: Text(modelView.userData?[index].email ?? 'no data right there'),
                              leading: Text(
                                (modelView.userData?[index].id.toString() ?? 'no data right there'),
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ))),
          ),
        );
      }),
    );
  }
}
