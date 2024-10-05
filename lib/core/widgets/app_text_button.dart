import 'package:flutter/material.dart';

import '../theming/color.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Color? textColor;
  final TextStyle textStyle;
  final ButtonStyle? buttonStyle;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = ColorsManager.mainBlue,
    required this.textStyle,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
