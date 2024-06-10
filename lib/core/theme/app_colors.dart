import 'package:flutter/material.dart';

class AppColors {
  static const bgcColor = Color(0XffEDEDF2);
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;

  static const MaterialColor mainColor = MaterialColor(_mainColorPrimaryValue, <int, Color>{
  50: Color(0xFFE9F0F0),
  100: Color(0xFFC9D9D9),
  200: Color(0xFFA5BFBF),
  300: Color(0xFF81A5A5),
  400: Color(0xFF669292),
  500: Color(_mainColorPrimaryValue),
  600: Color(0xFF447777),
  700: Color(0xFF3B6C6C),
  800: Color(0xFF336262),
  900: Color(0xFF234F4F),
});
static const int _mainColorPrimaryValue = 0xFF4B7F7F;

static const MaterialColor mainColorAccent = MaterialColor(_mainColorAccentValue, <int, Color>{
  100: Color(0xFF95FFFF),
  200: Color(_mainColorAccentValue),
  400: Color(0xFF2FFFFF),
  700: Color(0xFF15FFFF),
});
static const int _mainColorAccentValue = 0xFF62FFFF;
}
