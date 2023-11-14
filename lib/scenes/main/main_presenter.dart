import 'package:flutter_mvp/core/mvp/ipresenter.dart';
import 'package:flutter_mvp/core/mvp/iview.dart';
import 'package:flutter_mvp/scenes/main/main_model.dart';

class MainPresenter implements IPresenter<MainModel> {
  MainPresenter(this.view);
  @override
  IView view;
  @override
  MainModel model = const MainModel(
      counter: 0, counterStatus: 'this is the default counter status text');

  void incrementCounter() {
    print('Incrementing...');
    var newCount = model.counter + 1;
    model = model.copyWith(
        counter: newCount,
        counterStatus: switch (newCount) {
          1 => "It's a start",
          5 => "Good progress",
          10 => "10 out of 10, so goooood",
          _ => "Incrementing",
        });
    view.updateModel(model);
  }

  void decrementCounter() async {
    print('Decrementing...');
    var newCount = model.counter - 1;
    model = model.copyWith(counter: newCount, counterStatus: 'Decrementing :(');
    view.updateModel(model);
  }
}
