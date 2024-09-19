import 'package:flutter/material.dart';

import 'custom_book_image_item.dart';

class BooksDetailsListViewBuilder extends StatelessWidget {
  const BooksDetailsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImageItem(),
      ),
    );
  }
}
