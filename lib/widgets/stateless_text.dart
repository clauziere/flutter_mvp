import 'package:flutter/material.dart';
import 'package:flutter_mvp/widgets/cached_widget.dart';

class StatelessText extends StatelessWidget {
  const StatelessText({Key? key}) : super(key: key);

  //final String text;
  @override
  Widget build(BuildContext context) {
    final inheritedData = CachedWidget.of(context).data;
    print('StatelessButton build called');
    return Text(inheritedData as String);
  }
}
