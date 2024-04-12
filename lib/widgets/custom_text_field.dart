import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText, this.suffixIcon,
  });
  final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autocorrect: false,
      autofocus: true,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: true,
        fillColor: Colors.blue[100],
        focusedBorder: _border,
        enabledBorder: _border,
      ),
    );
  }
}
