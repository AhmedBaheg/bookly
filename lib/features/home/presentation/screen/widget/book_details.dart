import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/screen/widget/custom_book_image_item.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'books_rating.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImageItem(),
        ),
        const SizedBox(height: 43),
        const Text(
          'Old You and Louse Voss',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Text(
          'Louse Voss',
          style: Styles.textStyle18
              .copyWith(color: kSubTitleColor, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        const BooksRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
