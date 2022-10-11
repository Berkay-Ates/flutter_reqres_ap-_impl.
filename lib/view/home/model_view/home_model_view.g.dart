// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model_view.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModel, Store {
  late final _$networkEnumsAtom =
      Atom(name: '_HomeViewModel.networkEnums', context: context);

  @override
  NetworkEnums? get networkEnums {
    _$networkEnumsAtom.reportRead();
    return super.networkEnums;
  }

  @override
  set networkEnums(NetworkEnums? value) {
    _$networkEnumsAtom.reportWrite(value, super.networkEnums, () {
      super.networkEnums = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomeViewModel.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$checkFirstTimeConnectivityAsyncAction = AsyncAction(
      '_HomeViewModel.checkFirstTimeConnectivity',
      context: context);

  @override
  Future<dynamic> checkFirstTimeConnectivity() {
    return _$checkFirstTimeConnectivityAsyncAction
        .run(() => super.checkFirstTimeConnectivity());
  }

  late final _$_HomeViewModelActionController =
      ActionController(name: '_HomeViewModel', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_HomeViewModelActionController.startAction(
        name: '_HomeViewModel.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_HomeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
networkEnums: ${networkEnums},
isLoading: ${isLoading}
    ''';
  }
}
