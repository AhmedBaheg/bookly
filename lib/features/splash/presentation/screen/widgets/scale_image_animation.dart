import 'package:bookly/core/utils/assets_path.dart';
import 'package:flutter/material.dart';

class ScaleImageAnimation extends StatelessWidget {
  const ScaleImageAnimation({
    super.key,
    required this.scaleAnimation,
  });

  final Animation<double> scaleAnimation;

  /** we use AnimationBuilder to make build to this widget only to improve app performance */

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scaleAnimation,
      builder: (context, _) => ScaleTransition(
        scale: scaleAnimation,
        child: Image.asset(
          AssetsPath.logo,
          height: 60,
        ),
      ),
    );
  }
}
