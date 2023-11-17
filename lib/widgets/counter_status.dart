import 'package:flutter/material.dart';
import 'package:flutter_mvp/widgets/cached_widget.dart';

class CounterStatus extends StatelessWidget {
  const CounterStatus({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    if (text == null) {
      print('Optimized CounterStatus build called');
      var data = CachedWidget.of(context).data;
      return Text(data as String);
    } else {
      print('Normal CounterStatus build called');
      return Text(text!);
    }
  }
}
