import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .27,
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://i.pinimg.com/564x/c3/13/af/c313af3071459c8f6ba421b4f2ed0b33.jpg',
          ),
        ),
      ),
    );
  }
}
