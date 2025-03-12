import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme.dart';
import 'package:deliver_eats/core/commons/text_const.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final CustomTextTheme customTextTheme =
      CustomTextTheme.fromTextConstant();

  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConstant.white,
    brightness: Brightness.light,
    primaryColor: ColorConstant.black,
    textTheme: customTextTheme,
    primaryTextTheme: customTextTheme.apply(
      bodyColor: ColorConstant.black,
      displayColor: ColorConstant.black,
      decorationColor: ColorConstant.black,
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      toolbarHeight: UIHelper.setSp(70),
      color: Colors.white,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: TextConstant.textLgbold.copyWith(
        color: ColorConstant.black,
      ),
      shadowColor: ColorConstant.gray200.withOpacity(0.2),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: UIHelper.setSp(15),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.white.withOpacity(0.5); // Disabled icon color
          }
          return Colors.white; // Regular icon color
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled background color
          }
          return ColorConstant.rose700; // Regular background color
        }),
        minimumSize: MaterialStateProperty.all<Size>(
            const Size(32, 32)), // Set minimum size
        fixedSize: MaterialStateProperty.all<Size>(
            const Size(32, 32)), // Set fixed size
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled color
          }
          return ColorConstant.rose700; // Regular color
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled color
          }
          return ColorConstant.rose700; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            UIHelper.padding(vertical: 4, horizontal: 12)),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(UIHelper.setSp(10)),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled color
          }
          return ColorConstant.rose600; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        minimumSize: MaterialStateProperty.all<Size>(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: ColorConstant.rose200.withOpacity(0.5),
    ),
  );

  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      color: ColorConstant.gray500.withOpacity(0.2),
      spreadRadius: 3,
      blurRadius: 4,
      offset: const Offset(0, 1), // changes position of shadow
    ),
  ];
}
