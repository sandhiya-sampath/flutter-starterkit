import 'package:flutter/material.dart';
import 'button_theme.dart';
import 'text_theme.dart';


ThemeData jswConstructOneTheme = ThemeData(
    useMaterial3: true,
    primaryColor: ColorPalette.primaryColor,
    fontFamily: 'Manrope',
    textTheme: textTheme,
    filledButtonTheme: buttonThemeData,
    textButtonTheme: textButtonThemeData,
    radioTheme: radioThemeData,
    dividerTheme: dividerThemeData,
    inputDecorationTheme: inputDecorationTheme,
    outlinedButtonTheme: outlinedButtonThemeData,
    checkboxTheme: checkBoxThemeData);

/*
*Color Palette to be used across the page
*/
class ColorPalette {
  ColorPalette._();
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.green;
  static const Color bordergrey = Color.fromRGBO(230, 230, 230, 1);
  static const Color grey = Colors.grey;
  static const Color transparent = Colors.transparent;
  static const Color disabledColor = Color.fromRGBO(255, 229, 208, 1);
  static const Color errorColor = Colors.red;
  static const Color whiteColor = Colors.white;
  static const Color black = Colors.black;
  static const Color lightBlue = Color.fromRGBO(245, 247, 252, 1);
  static const Color lightGrey = Color.fromRGBO(230, 230, 230, 1);
  static const Color lightGrey500 = Color.fromRGBO(112, 115, 122, 1);
}

