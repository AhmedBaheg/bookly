import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField(
      {super.key,
      required this.onChanged,
      required this.label,
      required this.hintText,
      required this.icon,
      this.obscureText = false});

  final String label, hintText;
  final Icon icon;
  Function(String)? onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: icon,
        suffixIconColor: Colors.grey,
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.grey),
    );
  }
}
