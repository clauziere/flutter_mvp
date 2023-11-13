import 'package:flutter/material.dart';
import 'package:flutter_mvp/core/mvp/imodel.dart';
import 'package:flutter_mvp/core/mvp/ipresenter.dart';

abstract class IView<M extends IModel, P extends IPresenter>
    extends State<StatefulWidget> {
  late final P presenter;
  P createPresenter();
  IView() {
    presenter = createPresenter();
  }

  void updateModel(M model);
}
