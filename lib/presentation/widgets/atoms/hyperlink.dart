import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:flutter/material.dart';

class Hyperlink extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const Hyperlink(
      {super.key,
      required this.text,
      required this.onTap,
      this.color = ColorConstant.rose700});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: textTheme.textSmSemibold.copyWith(
          color: color,
        ),
      ),
    );
  }
}
