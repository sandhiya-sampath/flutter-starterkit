//define all the button themes to be used in the app here.
import 'package:flutter/material.dart';
import 'theme.dart';


///BUTTON THEMES
// text for filled button
FilledButtonThemeData buttonThemeData = FilledButtonThemeData(
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
TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(ColorPalette.primaryColor)));

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
  // backgroundColor: MaterialStateProperty.all( ColorPalette.grey),
  side: const MaterialStatePropertyAll(BorderSide(color: ColorPalette.secondaryColor)),
  shape: MaterialStateProperty.all(
      // RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
));

//RADIO BUTTON THEMES
//Radio button theme data
RadioThemeData radioThemeData = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> state) {
  if (state.contains(MaterialState.selected)) {
    return ColorPalette.secondaryColor;
  } else {
    return Colors.black;
  }
}));

//CHECKBOX BUTTON THEMES
//CheckBox button theme data
CheckboxThemeData checkBoxThemeData = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> state) {
  if (state.contains(MaterialState.selected)) {
    return ColorPalette.secondaryColor;
  } else {
    return Colors.black;
  }
}));

DividerThemeData dividerThemeData =
    const DividerThemeData(color: ColorPalette.bordergrey);

InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
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
