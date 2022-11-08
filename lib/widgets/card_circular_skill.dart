import 'package:flutter/material.dart';
import 'package:portfolio_app/config/string_capitalize.dart';

class CardCircularSkill extends StatelessWidget {
  final String assetName;
  const CardCircularSkill(this.assetName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final techName = assetName.fromFileName();
    return Card(
      color: theme.backgroundColor,
      elevation: 6,
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: IconButton(
          tooltip: techName,
          icon: Image.asset("assets/$assetName"),
          iconSize: 36,
          onPressed: null,
        ),
      ),
    );
  }
}
