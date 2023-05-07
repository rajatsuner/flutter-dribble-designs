import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
      scaffoldBackgroundColor: skinColor,
      colorScheme: ColorScheme.light(
        background: skinColor,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: skinColor,
          elevation: 0,
          titleTextStyle: TextStyle(color: blackColor, fontSize: 19),
          iconTheme: IconThemeData(color: blackColor)));

  static Color whiteColor = const Color(0xffF8F8F8);
  static Color skinColor = Color.fromARGB(255, 249, 239, 229);
  // static Color skinColor = Color.fromARGB(255, 237, 223, 209);
  static Color blackColor = const Color(0xFF000000);
  static Color darkGreyColor = const Color(0xFF7F8790);
  static Color lightGreyColor = const Color(0xFF8F92A1);
}
