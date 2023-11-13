import 'package:flutter/material.dart';
import 'package:flutter_mvp/widgets/inherited_widget.dart';

class StatelessText extends StatelessWidget {
  const StatelessText({Key? key}) : super(key: key);

  //final String text;
  @override
  Widget build(BuildContext context) {
    final inheritedData = MyInheritedWidget.of(context).data;
    print('StatelessButton build called');
    return Text(inheritedData);
  }
}
