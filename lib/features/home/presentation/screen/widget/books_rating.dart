import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(width: 6),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: kViewsNumberRating),
        ),
      ],
    );
  }
}
