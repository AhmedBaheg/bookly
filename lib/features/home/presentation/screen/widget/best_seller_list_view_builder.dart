import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListViewBuilder extends StatelessWidget {
  const BestSellerListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        // shrinkWrap: true, // To let list view build all items and take normal height
        physics:
            const NeverScrollableScrollPhysics(), // To disable list scroll because will be responsibility custom scroll view
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: BestSellerListViewItem(),
            ));
  }
}
