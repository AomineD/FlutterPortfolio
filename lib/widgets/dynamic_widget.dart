import 'package:flutter/material.dart';

class DynamicWidget<T, V> {
  List<T> models;
  Widget Function(V) widget;
  DynamicWidget(this.models, this.widget);
}
