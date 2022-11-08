import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class ListCardDynamic<T, V> extends StatelessWidget {
  final DynamicWidget<T, V> childWidget;
  const ListCardDynamic(this.childWidget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: childWidget.models
          .map((listOfTwo) => Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: (listOfTwo as List)
                        .map((ex) => _CardParent<V>(ex, childWidget.widget))
                        .toList()),
              ))
          .toList(),
    );
  }
}

class _CardParent<T> extends StatelessWidget {
  final T dynamicModel;
  final Widget Function(T e) widget;
  const _CardParent(this.dynamicModel, this.widget, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 90),
        child: Card(
          color: theme.backgroundColor,
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: widget.call(dynamicModel),
          ),
        ),
      ),
    );
  }
}
