import 'package:flutter/material.dart';
import 'package:flutter_mvp/core/mvp/imodel.dart';

@immutable
class MainModel implements IModel {
  const MainModel({required this.counter, required this.counterStatus});

  final int counter;
  final String counterStatus;

  @override
  MainModel copyWith({int? counter, String? counterStatus}) {
    return MainModel(
      counter: counter ?? this.counter,
      counterStatus: counterStatus ?? this.counterStatus,
    );
  }
}
