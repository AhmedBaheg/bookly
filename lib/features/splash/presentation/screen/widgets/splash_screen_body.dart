import 'package:bookly/features/splash/presentation/screen/widgets/slide_text_animation.dart';
import 'package:flutter/material.dart';

import 'scale_image_animation.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  // late Animation<double> fadeAnimation;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    scaleAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutSine);

    // fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
    //   CurvedAnimation(
    //     parent: animationController,
    //     curve: Curves.easeIn,
    //   ),
    // );

    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );

    animationController.forward();
    /** if we used below setState will make build for all screen so to improve app performance
     * we used AnimationBuilder to avoid this point and make individual build for each widget   */
    // scaleAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ScaleImageAnimation(scaleAnimation: scaleAnimation),
          const SizedBox(height: 15),
          SlideTextAnimation(slideAnimation: slideAnimation),
        ],
      ),
    );
  }
}