import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screen/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'books_list_view_builder.dart';
import 'books_list_view_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        BooksListViewBuilder(),
        SizedBox(height: 50),
        Text('Best Seller', style: Styles.mediumTitle),
      ],
    );
  }
}
