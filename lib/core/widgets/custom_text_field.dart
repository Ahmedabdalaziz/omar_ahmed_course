import 'package:flutter/material.dart';

import '../theming/color.dart';

class CustomTextField extends StatelessWidget {
  final Color textColor;
  final Function(String)? onChange;
  final String? labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final IconData? icon;
  final IconButton? suffixIcon;
  final double? borderCircular;
  final Function(String)? onSubmitted;

  const CustomTextField({
    super.key,
    required this.textColor,
    this.labelText,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.icon,
    this.onChange,
    this.suffixIcon,
    this.onSubmitted,
    this.borderCircular = 10,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onSubmitted,
      onChanged: onChange,
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: textColor, fontSize: 18),
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: ColorsManager.lighterGrey,
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: TextStyle(color: textColor),
        prefixIcon: Icon(icon, color: textColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderCircular!),
          borderSide: const BorderSide(color: ColorsManager.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderCircular!),
          borderSide: const BorderSide(color: ColorsManager.mainBlue),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderCircular!),
          borderSide: const BorderSide(color: ColorsManager.red, width: 1.3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderCircular!),
          borderSide: const BorderSide(color: ColorsManager.red, width: 1.3),
        ),
      ),
    );
  }
}
