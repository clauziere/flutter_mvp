import 'package:flutter/material.dart';

class StatefulButton extends StatefulWidget {
  const StatefulButton({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  State<StatefulButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<StatefulButton>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('Button build called');
    return ElevatedButton(
      onPressed: () {},
      child: Text(widget.text),
    );
  }

  @override
  void didUpdateWidget(covariant StatefulButton oldWidget) {
    print('Button widget updated');
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => true;
}
