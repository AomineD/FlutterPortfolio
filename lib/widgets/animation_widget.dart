import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  final String animationAsset;
  final double width;
  const AnimationWidget(this.animationAsset,
      {super.key, this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Lottie.asset('assets/$animationAsset.json',
          width: width, fit: BoxFit.fill),
    );
  }
}
