import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      this.onTap,
      required this.text,
      this.fontSize});

  final String text;
  final Color backgroundColor, textColor;
  final BorderRadius? borderRadius;
  final Function()? onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
