import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsScreen);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://i.pinimg.com/564x/c3/13/af/c313af3071459c8f6ba421b4f2ed0b33.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}