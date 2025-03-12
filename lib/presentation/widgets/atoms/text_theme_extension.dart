import 'package:deliver_eats/core/commons/custom_text_theme.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  CustomTextTheme get customTextTheme =>
      Theme.of(this).textTheme as CustomTextTheme;

  ThemeData get theme => Theme.of(this);
}
