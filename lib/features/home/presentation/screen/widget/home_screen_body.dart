import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screen/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_builder.dart';
import 'best_seller_list_view_item.dart';
import 'books_list_view_builder.dart';
import 'custom_book_image_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kScreenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                CustomAppBar(),
                SizedBox(height: 50),
                BooksListViewBuilder(),
                SizedBox(height: 50),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          // to let list view expand remaining space and avoid to use shrink wrap
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kScreenPadding),
            child: BestSellerListViewBuilder(),
          ),
        ),
      ],
    );
  }
}
