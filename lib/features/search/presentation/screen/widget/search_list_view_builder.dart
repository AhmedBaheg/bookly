import 'package:bookly/features/home/presentation/screen/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchListViewBuilder extends StatelessWidget {
  const SearchListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: BestSellerListViewItem(),
            ));
  }
}
