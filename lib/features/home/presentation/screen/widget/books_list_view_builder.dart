import 'package:flutter/material.dart';

import 'books_list_view_item.dart';

class BooksListViewBuilder extends StatelessWidget {
  const BooksListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const BooksListViewItem(),
      ),
    );
  }
}
