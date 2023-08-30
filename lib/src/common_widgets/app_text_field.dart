import 'package:flutter/material.dart';

import '../utils/styles/app_style.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Widget? suffixIcon;
  final bool obscureText;
  TextEditingController? controller;
  String? Function(String?)? validator;

   AppTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
     this.controller,
     this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          isDense: true,
          filled: true,
          fillColor: Colors.grey.shade200,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide.none,
          ),
          // prefix: const Icon(Icons.person),
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: AppStyle.hintRegular,
          suffixIcon: suffixIcon,

        ),
      ),
    );
  }
}


class AppTextField2 extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Widget? suffixIcon;
  final bool obscureText;



  const AppTextField2({
    super.key,
    required this.hintText,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        isDense: true,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide.none,
        ),
        // prefix: const Icon(Icons.person),
        prefixIcon: Icon(icon),

        hintText: hintText,
        hintStyle: AppStyle.hintRegular,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
