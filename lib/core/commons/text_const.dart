import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextConstant {
  TextConstant._();

  static final TextStyle _baseStyle = GoogleFonts.inter();

  static TextStyle display2xlregular = _baseStyle.copyWith(
    fontSize: 72.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.25,
    letterSpacing: -2,
  );
  static TextStyle display2xlmedium = _baseStyle.copyWith(
    fontSize: 72.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle display2xlsemibold = _baseStyle.copyWith(
    fontSize: 72.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle display2xlbold = _baseStyle.copyWith(
    fontSize: 72.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle displayXlregular = _baseStyle.copyWith(
    fontSize: 60.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.2,
    letterSpacing: -2,
  );

  static TextStyle displayXlmedium = _baseStyle.copyWith(
    fontSize: 60.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.2,
    letterSpacing: -2,
  );

  static TextStyle displayXlsemibold = _baseStyle.copyWith(
    fontSize: 60.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.2,
    letterSpacing: -2,
  );

  static TextStyle displayXlbold = _baseStyle.copyWith(
    fontSize: 60.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.2,
    letterSpacing: -2,
  );

  static TextStyle displayLgregular = _baseStyle.copyWith(
    fontSize: 48.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle displayLgmedium = _baseStyle.copyWith(
    fontSize: 48.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle displayLgsemibold = _baseStyle.copyWith(
    fontSize: 48.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle displayLgbold = _baseStyle.copyWith(
    fontSize: 48.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.25,
    letterSpacing: -2,
  );

  static TextStyle displayMdregular = _baseStyle.copyWith(
    fontSize: 36.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.2222222222222223,
    letterSpacing: -2,
  );

  static TextStyle displayMdmedium = _baseStyle.copyWith(
    fontSize: 36.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.2222222222222223,
    letterSpacing: -2,
  );

  static TextStyle displayMdsemibold = _baseStyle.copyWith(
    fontSize: 36.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.2222222222222223,
    letterSpacing: -2,
  );

  static TextStyle displayMdbold = _baseStyle.copyWith(
    fontSize: 36.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.2222222222222223,
    letterSpacing: -2,
  );

  static TextStyle displaySmregular = _baseStyle.copyWith(
    fontSize: 30.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.2666666666666666,
  );

  static TextStyle displaySmmedium = _baseStyle.copyWith(
    fontSize: 30.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.2666666666666666,
  );

  static TextStyle displaySmsemibold = _baseStyle.copyWith(
    fontSize: 30.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.2666666666666666,
  );

  static TextStyle displaySmbold = _baseStyle.copyWith(
    fontSize: 30.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.2666666666666666,
  );

  static TextStyle displaySm__medium_italic = _baseStyle.copyWith(
    fontSize: 30.sp,
    fontWeight: getWeightFromString("medium-italic"),
    fontStyle: FontStyle.italic,
    height: 1.4666666666666666,
  );

  static TextStyle displayXsregular = _baseStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.3333333333333333,
  );

  static TextStyle displayXsmedium = _baseStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.3333333333333333,
  );

  static TextStyle displayXssemibold = _baseStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.3333333333333333,
  );

  static TextStyle displayXsbold = _baseStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.3333333333333333,
  );

  static TextStyle displayXsmedium_italic = _baseStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: getWeightFromString("medium-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle displayXs__semibold_underlined = _baseStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.3333333333333333,
  );

  static TextStyle textXlregular = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5,
  );

  static TextStyle textXlmedium = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.5,
  );

  static TextStyle textXlsemibold = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.5,
  );

  static TextStyle textXlbold = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.5,
  );

  static TextStyle textXlregular_italic = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textXlmedium_italic = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("medium-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textXlsemibold_italic = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("semi-bold_italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textXlbold_italic = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("bold-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textXl__regular_underlined = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5,
  );

  static TextStyle textXl__medium_underlined = _baseStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.5,
  );

  static TextStyle textLgregular = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5555555555555556,
  );

  static TextStyle textLgmedium = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.5555555555555556,
  );

  static TextStyle textLgsemibold = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.5555555555555556,
  );

  static TextStyle textLgbold = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.5555555555555556,
  );

  static TextStyle textLgregular_italic = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("italic"),
    fontStyle: FontStyle.italic,
    height: 1.5555555555555556,
  );

  static TextStyle textLgmedium_italic = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("medium-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5555555555555556,
  );

  static TextStyle textLgsemibold_italic = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("semi-bold_italic"),
    fontStyle: FontStyle.italic,
    height: 1.5555555555555556,
  );

  static TextStyle textLgbold_italic = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("bold-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5555555555555556,
  );

  static TextStyle textLgregular_underlined = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5555555555555556,
  );

  static TextStyle textLg__medium_underlined = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.5555555555555556,
  );

  static TextStyle textMdregular = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5,
  );

  static TextStyle textMdmedium = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.5,
  );

  static TextStyle textMdsemibold = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.5,
  );

  static TextStyle textMdbold = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.5,
  );

  static TextStyle textMdregular_italic = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textMdmedium_italic = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("medium-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textMdsemibold_italic = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("semi-bold_italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textMdbold_italic = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("bold-italic"),
    fontStyle: FontStyle.italic,
    height: 1.5,
  );

  static TextStyle textMd__regular_underlined = _baseStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5,
  );

  static TextStyle textSmregular = _baseStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.4285714285714286,
  );

  static TextStyle textSmmedium = _baseStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.4285714285714286,
  );

  static TextStyle textSmsemibold = _baseStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.4285714285714286,
  );

  static TextStyle textSm__bold = _baseStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.4285714285714286,
  );

  static TextStyle textXsregular = _baseStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: getWeightFromString("regular"),
    height: 1.5,
  );

  static TextStyle textXsmedium = _baseStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: getWeightFromString("medium"),
    height: 1.5,
  );

  static TextStyle textXssemibold = _baseStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: getWeightFromString("semi-bold"),
    height: 1.5,
  );

  static TextStyle textXs__bold = _baseStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: getWeightFromString("bold"),
    height: 1.5,
  );

  ////// CHANGE YOUR FONT WEIGHT ACCORDINGLY
  static FontWeight getWeightFromString(String weight) {
    switch (weight) {
      case "thin":
      case "thin-italic":
        return FontWeight.w100;
      case "extra-light":
      case "extra-light-italic":
        return FontWeight.w200;
      case "light":
      case "light-italic":
        return FontWeight.w300;
      case "regular":
      case "regular-italic":
        return FontWeight.w400;
      case "medium":
      case "medium-italic":
        return FontWeight.w500;
      case "semi-bold":
      case "semi-bold-italic":
        return FontWeight.w600;
      case "bold":
      case "bold-italic":
        return FontWeight.w700;
      case "extra-bold":
      case "extra-bold-italic":
        return FontWeight.w800;
      case "black":
      case "black-italic":
        return FontWeight.w900;
      default:
        return FontWeight.normal;
    }
  }
}
