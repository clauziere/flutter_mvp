import 'package:flutter_mvp/core/mvp/iview.dart';

abstract class IPresenter<IModel> {
  late final IView view;
  late final IModel model;
}
