import 'package:deliver_eats/core/commons/text_const.dart';
import 'package:flutter/material.dart';

class CustomTextTheme extends TextTheme {
  const CustomTextTheme({
    TextStyle? display2xlregular,
    TextStyle? display2xlmedium,
    TextStyle? display2xlsemibold,
    TextStyle? display2xlbold,
    TextStyle? displayXlregular,
    TextStyle? displayXlmedium,
    TextStyle? displayXlsemibold,
    TextStyle? displayXlbold,
    TextStyle? displayLgregular,
    TextStyle? displayLgmedium,
    TextStyle? displayLgsemibold,
    TextStyle? displayLgbold,
    TextStyle? displayMdregular,
    TextStyle? displayMdmedium,
    TextStyle? displayMdsemibold,
    TextStyle? displayMdbold,
    TextStyle? displaySmregular,
    TextStyle? displaySmmedium,
    TextStyle? displaySmsemibold,
    TextStyle? displaySmbold,
    TextStyle? textXlregular,
    TextStyle? textXlmedium,
    TextStyle? textXlsemibold,
    TextStyle? textXlbold,
    TextStyle? textLgregular,
    TextStyle? textLgmedium,
    TextStyle? textLgsemibold,
    TextStyle? textLgbold,
    TextStyle? textMdregular,
    TextStyle? textMdmedium,
    TextStyle? textMdsemibold,
    TextStyle? textMdbold,
    TextStyle? textSmregular,
    TextStyle? textSmmedium,
    TextStyle? textSmsemibold,
    TextStyle? textSm__bold,
    TextStyle? textXsregular,
    TextStyle? textXsmedium,
    TextStyle? textXssemibold,
    TextStyle? textXs__bold,
  }) : super(
          // Map your custom styles to the default TextTheme properties
          displayLarge: display2xlregular,
          displayMedium: displayXlregular,
          displaySmall: displayLgregular,
          headlineLarge: displayMdregular,
          headlineMedium: displaySmregular,
          headlineSmall: textXlregular,
          titleLarge: textLgregular,
          titleMedium: textMdregular,
          titleSmall: textSmregular,
          bodyLarge: textMdregular,
          bodyMedium: textSmregular,
          bodySmall: textXsregular,
          labelLarge: textMdmedium,
          labelMedium: textSmmedium,
          labelSmall: textXsmedium,
        );

  // Display 2XL styles
  TextStyle get display2xlRegular => displayLarge ?? const TextStyle();
  TextStyle get display2xlMedium =>
      displayLarge?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get display2xlSemibold =>
      displayLarge?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get display2xlBold =>
      displayLarge?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Display XL styles
  TextStyle get displayXlRegular => displayMedium ?? const TextStyle();
  TextStyle get displayXlMedium =>
      displayMedium?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get displayXlSemibold =>
      displayMedium?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get displayXlBold =>
      displayMedium?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Display LG styles
  TextStyle get displayLgRegular => displaySmall ?? const TextStyle();
  TextStyle get displayLgMedium =>
      displaySmall?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get displayLgSemibold =>
      displaySmall?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get displayLgBold =>
      displaySmall?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Display MD styles
  TextStyle get displayMdRegular => headlineLarge ?? const TextStyle();
  TextStyle get displayMdMedium =>
      headlineLarge?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get displayMdSemibold =>
      headlineLarge?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get displayMdBold =>
      headlineLarge?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Display SM styles
  TextStyle get displaySmRegular => headlineMedium ?? const TextStyle();
  TextStyle get displaySmMedium =>
      headlineMedium?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle();
  TextStyle get displaySmSemibold =>
      headlineMedium?.copyWith(fontWeight: FontWeight.w600) ??
      const TextStyle();
  TextStyle get displaySmBold =>
      headlineMedium?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle();

  // Text XL styles
  TextStyle get textXlRegular => headlineSmall ?? const TextStyle();
  TextStyle get textXlMedium =>
      headlineSmall?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get textXlSemibold =>
      headlineSmall?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get textXlBold =>
      headlineSmall?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Text LG styles
  TextStyle get textLgRegular => titleLarge ?? const TextStyle();
  TextStyle get textLgMedium =>
      titleLarge?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get textLgSemibold =>
      titleLarge?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get textLgBold =>
      titleLarge?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Text MD styles
  TextStyle get textMdRegular => titleMedium ?? const TextStyle();
  TextStyle get textMdMedium =>
      titleMedium?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get textMdSemibold =>
      titleMedium?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get textMdBold =>
      titleMedium?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Text SM styles
  TextStyle get textSmRegular => titleSmall ?? const TextStyle();
  TextStyle get textSmMedium =>
      titleSmall?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get textSmSemibold =>
      titleSmall?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get textSmBold =>
      titleSmall?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Text XS styles
  TextStyle get textXsRegular => labelSmall ?? const TextStyle();
  TextStyle get textXsMedium =>
      labelSmall?.copyWith(fontWeight: FontWeight.w500) ?? const TextStyle();
  TextStyle get textXsSemibold =>
      labelSmall?.copyWith(fontWeight: FontWeight.w600) ?? const TextStyle();
  TextStyle get textXsBold =>
      labelSmall?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle();

  // Factory constructor to create CustomTextTheme from TextConstant
  factory CustomTextTheme.fromTextConstant() {
    return CustomTextTheme(
      display2xlregular: TextConstant.display2xlregular,
      display2xlmedium: TextConstant.display2xlmedium,
      display2xlsemibold: TextConstant.display2xlsemibold,
      display2xlbold: TextConstant.display2xlbold,
      displayXlregular: TextConstant.displayXlregular,
      displayXlmedium: TextConstant.displayXlmedium,
      displayXlsemibold: TextConstant.displayXlsemibold,
      displayXlbold: TextConstant.displayXlbold,
      displayLgregular: TextConstant.displayLgregular,
      displayLgmedium: TextConstant.displayLgmedium,
      displayLgsemibold: TextConstant.displayLgsemibold,
      displayLgbold: TextConstant.displayLgbold,
      displayMdregular: TextConstant.displayMdregular,
      displayMdmedium: TextConstant.displayMdmedium,
      displayMdsemibold: TextConstant.displayMdsemibold,
      displayMdbold: TextConstant.displayMdbold,
      displaySmregular: TextConstant.displaySmregular,
      displaySmmedium: TextConstant.displaySmmedium,
      displaySmsemibold: TextConstant.displaySmsemibold,
      displaySmbold: TextConstant.displaySmbold,
      textXlregular: TextConstant.textXlregular,
      textXlmedium: TextConstant.textXlmedium,
      textXlsemibold: TextConstant.textXlsemibold,
      textXlbold: TextConstant.textXlbold,
      textLgregular: TextConstant.textLgregular,
      textLgmedium: TextConstant.textLgmedium,
      textLgsemibold: TextConstant.textLgsemibold,
      textLgbold: TextConstant.textLgbold,
      textMdregular: TextConstant.textMdregular,
      textMdmedium: TextConstant.textMdmedium,
      textMdsemibold: TextConstant.textMdsemibold,
      textMdbold: TextConstant.textMdbold,
      textSmregular: TextConstant.textSmregular,
      textSmmedium: TextConstant.textSmmedium,
      textSmsemibold: TextConstant.textSmsemibold,
      textSm__bold: TextConstant.textSm__bold,
      textXsregular: TextConstant.textXsregular,
      textXsmedium: TextConstant.textXsmedium,
      textXssemibold: TextConstant.textXssemibold,
      textXs__bold: TextConstant.textXs__bold,
    );
  }
}
