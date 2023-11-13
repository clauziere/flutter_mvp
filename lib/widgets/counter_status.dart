import 'package:flutter/material.dart';

class CounterStatus extends StatelessWidget {
  const CounterStatus({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    print('StatelessButton build called');
    return Text(text);
  }
}
