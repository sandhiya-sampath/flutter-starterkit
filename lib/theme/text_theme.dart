//define all the text themes to be used in the app here.
import 'package:flutter/material.dart';
import 'package:flutter_starter/theme/theme.dart';

TextTheme textTheme =const TextTheme(
    headlineLarge: _headlineLarge,
    headlineMedium: _headlineMedium,
    headlineSmall: _headlineSmall,
    bodyLarge: _bodyLarge,
    bodyMedium: _bodyMedium,
    bodySmall: _bodySmall,
    titleMedium: _titleMedium,
    titleSmall: _titleSmall,
    displayLarge: _displayLarge,
    displaySmall: _displaySmall);

 const TextStyle _headlineLarge =  TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  height: 1.3,
);

const TextStyle _headlineMedium =
     TextStyle(fontSize: 20, fontWeight: FontWeight.w600, height: 1.4);

const TextStyle _headlineSmall =
     TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 1.2);

const TextStyle _bodyLarge =
     TextStyle(fontSize: 14, fontWeight: FontWeight.normal, height: 1.2);

const TextStyle _bodyMedium =
     TextStyle(fontSize: 12, fontWeight: FontWeight.normal, height: 1.2);

const TextStyle _bodySmall =
     TextStyle(fontSize: 10, fontWeight: FontWeight.w500, height: 1.3);

const TextStyle _titleMedium =  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorPalette.grey,
    letterSpacing: 0.2,
    height: 1.28);
const TextStyle _displayLarge =  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    height: 1.28);
const TextStyle _displaySmall =
     TextStyle(fontSize: 8,
    color: ColorPalette.grey, fontWeight: FontWeight.w600, height: 1.4) ;
const TextStyle _titleSmall =  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: ColorPalette.primaryColor,
    letterSpacing: 0.2,
    height: 1.28);
 TextStyle _activeLink = _bodyLarge.copyWith(color: ColorPalette.primaryColor);


///[TextStyles] contains all the custom styles that could not be offerd as part of theme
class TextStyles {
  static  TextStyle get activeLink => _activeLink;
}
