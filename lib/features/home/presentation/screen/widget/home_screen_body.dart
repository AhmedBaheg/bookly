import 'package:bookly/features/home/presentation/screen/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
