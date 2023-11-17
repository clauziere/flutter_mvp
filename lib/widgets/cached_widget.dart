import 'package:flutter/material.dart';

class CachedWidget extends InheritedWidget {
  final Object data;

  const CachedWidget({
    required this.data,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

  static CachedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CachedWidget>()!;
  }

  @override
  bool updateShouldNotify(CachedWidget oldWidget) {
    bool update = data != oldWidget.data;
    print('updateShouldNotify called. Update: $update');
    return update;
  }
}
