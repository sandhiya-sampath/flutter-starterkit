import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    useMaterial3: true,
    primaryColor: ColorPalette.primaryColor,
    fontFamily: 'Manrope',
    textTheme: _textTheme,
    filledButtonTheme: _buttonThemeData,
    textButtonTheme: _textButtonThemeData,
    radioTheme: _radioThemeData,
    dividerTheme: _dividerThemeData,
    inputDecorationTheme: _inputDecorationTheme,
    outlinedButtonTheme: _OutlinedButtonThemeData,
    checkboxTheme: _checkBoxThemeData);

/*
*Color Palette to be used across the page
*/
class ColorPalette {
  ColorPalette._();
  static const Color primaryColor = Color(0xFFFF8E19);
  static const Color secondaryColor = Color(0xFF198754);
  static const Color bordergrey = Color.fromRGBO(230, 230, 230, 1);
  static const Color grey = Colors.grey;
  static const Color transparent = Colors.transparent;
  static const Color blue = Color.fromRGBO(49, 77, 133, 1);
  static const Color disabledColor = Color.fromRGBO(255, 229, 208, 1);
  static const Color errorColor = Colors.red;
  static const Color whiteColor = Colors.white;
  static const Color black = Colors.black;
  static const Color lightBlue = Color.fromRGBO(245, 247, 252, 1);
  static const Color lightGrey = Color.fromRGBO(230, 230, 230, 1);
  static const Color lightGrey500 = Color.fromRGBO(112, 115, 122, 1);
  // static const Color whiteColor = Colors.white;

  // #E6E6E6
}

///BUTTON THEMES
// text for filled button
FilledButtonThemeData _buttonThemeData = FilledButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((Set<MaterialState> state) {
          if (state.contains(MaterialState.selected)) {
            return ColorPalette.primaryColor;
          } else if (state.contains(MaterialState.disabled)) {
            return ColorPalette.disabledColor;
          } else {
            return ColorPalette.primaryColor;
          }
        }),
        splashFactory: NoSplash.splashFactory,
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)))));

//style for text button
TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(ColorPalette.primaryColor)));

OutlinedButtonThemeData _OutlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
  // backgroundColor: MaterialStateProperty.all( ColorPalette.grey),
  side: const MaterialStatePropertyAll(BorderSide(color: ColorPalette.blue)),
  shape: MaterialStateProperty.all(

      // RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
));

//RADIO BUTTON THEMES
//Radio button theme data
RadioThemeData _radioThemeData = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> state) {
  if (state.contains(MaterialState.selected)) {
    return ColorPalette.blue;
  } else {
    return Colors.black;
  }
}));

//CHECKBOX BUTTON THEMES
//CheckBox button theme data
CheckboxThemeData _checkBoxThemeData = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> state) {
  if (state.contains(MaterialState.selected)) {
    return ColorPalette.blue;
  } else {
    return Colors.black;
  }
}));

DividerThemeData _dividerThemeData =
    const DividerThemeData(color: ColorPalette.bordergrey);

InputDecorationTheme _inputDecorationTheme = const InputDecorationTheme(
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
    width: 1,
    color: ColorPalette.errorColor,
  )),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ColorPalette.grey, width: 2.0),
  ),
  fillColor: ColorPalette.whiteColor,
  border: OutlineInputBorder(),
);
TextTheme _textTheme = const TextTheme(
  bodySmall: TextStyle(
      height: 1.6,
      fontSize: 13,
      fontWeight: FontWeight.w400),
  bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
  bodyMedium: TextStyle(
      letterSpacing: 0.0, fontSize: 14, fontWeight: FontWeight.normal),
  titleMedium: TextStyle(
      letterSpacing: 0.15, fontSize: 16, fontWeight: FontWeight.normal),
  titleSmall:
      TextStyle(letterSpacing: 0.1, fontSize: 14, fontWeight: FontWeight.w500),
  displayLarge:
      TextStyle(letterSpacing: -1.5, fontSize: 96, fontWeight: FontWeight.w300),
  displayMedium:
      TextStyle(letterSpacing: -0.5, fontSize: 60, fontWeight: FontWeight.w300),
  displaySmall: TextStyle(
      letterSpacing: 0.0, fontSize: 48, fontWeight: FontWeight.normal),
  headlineLarge: TextStyle(
      letterSpacing: 0.25, fontSize: 34, fontWeight: FontWeight.normal),
  headlineMedium: TextStyle(
      letterSpacing: 0.0, fontSize: 24, fontWeight: FontWeight.normal),
  headlineSmall:
      TextStyle(letterSpacing: 0.15, fontSize: 20, fontWeight: FontWeight.w500),
  labelLarge: TextStyle(
      letterSpacing: 1.25,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white),
  labelSmall: TextStyle(
      letterSpacing: 1.5, fontSize: 10, fontWeight: FontWeight.normal),
);
