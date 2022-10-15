// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

//* typedef ModelViewFunction<T extends Store> = void Function(T modelView);

class BaseView<T extends Store> extends StatefulWidget {
  //* block sınıfları store'dan turedigi icin block sınıfımızı view olustururken baseView'a verirsek otamatik olarak ulasımımız olur
  const BaseView({
    Key? key,
    required this.viewModel,
    required this.onModelReady,
    required this.onPageBuilder,
    this.onDispose,
  }) : super(key: key);

  final T viewModel;
  final void Function(T modelView) onModelReady;
  final Widget Function(BuildContext context, T modelView) onPageBuilder;
  final VoidCallback? onDispose;

  @override
  State<BaseView> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.viewModel;
    widget.onModelReady(viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose?.call();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, viewModel);
  }
}
