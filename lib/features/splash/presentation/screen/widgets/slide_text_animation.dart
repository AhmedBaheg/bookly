import 'package:flutter/material.dart';

class SlideTextAnimation extends StatelessWidget {
  const SlideTextAnimation({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  /** we use AnimationBuilder to make build to this widget only to improve app performance */

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, _) => SlideTransition(
        position: slideAnimation,
        child: const Text(
          'Read Free Book',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
