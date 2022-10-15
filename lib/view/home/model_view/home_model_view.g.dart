// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model_view.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModel, Store {
  late final _$sharedListManagerAtom =
      Atom(name: '_HomeViewModel.sharedListManager', context: context);

  @override
  SharedListManager? get sharedListManager {
    _$sharedListManagerAtom.reportRead();
    return super.sharedListManager;
  }

  @override
  set sharedListManager(SharedListManager? value) {
    _$sharedListManagerAtom.reportWrite(value, super.sharedListManager, () {
      super.sharedListManager = value;
    });
  }

  late final _$homeViewUsersAtom =
      Atom(name: '_HomeViewModel.homeViewUsers', context: context);

  @override
  HomeModel? get homeViewUsers {
    _$homeViewUsersAtom.reportRead();
    return super.homeViewUsers;
  }

  @override
  set homeViewUsers(HomeModel? value) {
    _$homeViewUsersAtom.reportWrite(value, super.homeViewUsers, () {
      super.homeViewUsers = value;
    });
  }

  late final _$userDataAtom =
      Atom(name: '_HomeViewModel.userData', context: context);

  @override
  List<Data?>? get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(List<Data?>? value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

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

  late final _$saveModelViewListUsersAsyncAction =
      AsyncAction('_HomeViewModel.saveModelViewListUsers', context: context);

  @override
  Future<bool> saveModelViewListUsers(SharedEnums key) {
    return _$saveModelViewListUsersAsyncAction
        .run(() => super.saveModelViewListUsers(key));
  }

  late final _$initSharedStuffAsyncAction =
      AsyncAction('_HomeViewModel.initSharedStuff', context: context);

  @override
  Future<void> initSharedStuff() {
    return _$initSharedStuffAsyncAction.run(() => super.initSharedStuff());
  }

  late final _$getUsersGenericAsyncAction =
      AsyncAction('_HomeViewModel.getUsersGeneric', context: context);

  @override
  Future<void> getUsersGeneric() {
    return _$getUsersGenericAsyncAction.run(() => super.getUsersGeneric());
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
  void getUsers(SharedEnums key) {
    final _$actionInfo = _$_HomeViewModelActionController.startAction(
        name: '_HomeViewModel.getUsers');
    try {
      return super.getUsers(key);
    } finally {
      _$_HomeViewModelActionController.endAction(_$actionInfo);
    }
  }

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
sharedListManager: ${sharedListManager},
homeViewUsers: ${homeViewUsers},
userData: ${userData},
networkEnums: ${networkEnums},
isLoading: ${isLoading}
    ''';
  }
}
