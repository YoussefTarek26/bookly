import 'package:flutter/material.dart';

void SlidingAnimation({
  required TickerProvider vs,
  required Function(AnimationController) setController,
  required Function(Animation<Offset>) setAnimation,
  required Offset beginOF,
  required Offset endOF,
}) {
  final animationController =
      AnimationController(vsync: vs, duration: const Duration(seconds: 3));

  final slidingAnimation = Tween<Offset>(begin: beginOF , end: endOF)
      .animate(animationController);

  setController(animationController);
  setAnimation(slidingAnimation);
  animationController.forward();
}
