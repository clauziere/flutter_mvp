import 'package:flutter/material.dart';
import 'package:flutter_mvp/core/mvp/iview.dart';
import 'package:flutter_mvp/scenes/main/main_model.dart';
import 'package:flutter_mvp/scenes/main/main_presenter.dart';
import 'package:flutter_mvp/widgets/counter_status.dart';

class MainView extends StatefulWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends IView<MainModel, MainPresenter> {
  late MainModel _model;

  @override
  void initState() {
    super.initState();
    _model = presenter.model;
  }

  @override
  MainPresenter createPresenter() {
    return MainPresenter(this);
  }

  @override
  void updateModel(MainModel model) {
    setState(() {
      _model = model;
    });
  }

  @override
  Widget build(BuildContext context) {
    int counter = _model.counter;
    String counterStatus = _model.counterStatus;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CounterStatus(text: counterStatus)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => presenter.incrementCounter(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => presenter.decrementCounter(),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
