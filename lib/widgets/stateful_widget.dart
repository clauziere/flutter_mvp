import 'package:flutter/material.dart';

class StatefulText extends StatefulWidget {
  const StatefulText({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  State<StatefulText> createState() => _StatefulTextState();
}

class _StatefulTextState extends State<StatefulText> {
  @override
  Widget build(BuildContext context) {
    print('StatefulText build called');
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      const Text("StatefulText:"),
      Text(widget.text),
    ]);
  }

  @override
  void didUpdateWidget(covariant StatefulText oldWidget) {
    print('StatefulText widget updated');
    super.didUpdateWidget(oldWidget);
  }
}
