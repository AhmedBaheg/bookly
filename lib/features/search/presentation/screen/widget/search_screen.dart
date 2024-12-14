import 'package:flutter/material.dart';

import 'search_screen_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchScreenBody(),
      ),
    );
  }
}
