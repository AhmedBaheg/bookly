import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsPath.logo,
          height: 20,
        ),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchScreen);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ))
      ],
    );
  }
}
