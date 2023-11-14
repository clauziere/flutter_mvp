import 'package:flutter/material.dart';
import 'package:flutter_mvp/core/mvp/iview.dart';
import 'package:flutter_mvp/scenes/main/main_presenter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockMainViewState extends Mock implements IView {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return super.toString();
  }
}

void main() {
  late MockMainViewState view;
  late MainPresenter presenter;

  setUp(() => {
        view = MockMainViewState(),
        presenter = MainPresenter(view),
      });

  group('Counter Presenter', () {
    test('value should be incremented and decremented', () {
      presenter.incrementCounter();

      expect(presenter.model.counter, 1);
      presenter.decrementCounter();
      expect(presenter.model.counter, 0);
    });

    test('status text should change', () {
      final view = MockMainViewState();
      final presenter = MainPresenter(view);
      expect(presenter.model.counterStatus,
          'this is the default counter status text');
      presenter.incrementCounter(); //1
      expect(presenter.model.counterStatus, "It's a start");
      presenter.incrementCounter(); //2
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //3
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //4
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //5
      expect(presenter.model.counterStatus, "Good progress");
      presenter.incrementCounter(); //6
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //7
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //8
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //9
      expect(presenter.model.counterStatus, "Incrementing");
      presenter.incrementCounter(); //10
      expect(presenter.model.counterStatus, "10 out of 10, so goooood");
      presenter.decrementCounter();
      expect(presenter.model.counterStatus, "Decrementing :(");
    });
  });
}
