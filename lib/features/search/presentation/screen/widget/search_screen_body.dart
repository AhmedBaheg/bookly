import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/screen/widget/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/screen/widget/search_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children: [
          CustomSearchTextField(
            onChanged: (value) {},
            label: 'Search',
            hintText: 'Search',
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(height: 16),
          const Expanded(child: SearchListViewBuilder()),
        ],
      ),
    );
  }
}
