import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = _buildLightAppTheme();

  static ThemeData _buildLightAppTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      textTheme: _lightTextTheme(base.textTheme),
      inputDecorationTheme:
          _lightInputDecorationTheme(base.inputDecorationTheme),
      appBarTheme: _lightAppBarTheme(base.appBarTheme),
      textSelectionTheme:const TextSelectionThemeData(cursorColor: AstraColors.black,),
    );
  }

  static _lightTextTheme(TextTheme baseTextTheme) {
    return baseTextTheme.copyWith(
      headline5: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 28,
      ),
      subtitle1: const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 17,
      ),
      caption: const TextStyle(
        fontFamily: 'Manrope',
          fontWeight: FontWeight.w600, fontSize: 12, color: AstraColors.grey),
    );
  }

  static _lightInputDecorationTheme(InputDecorationTheme inputDecorationTheme) {
    return inputDecorationTheme.copyWith(
      hintStyle: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 12, color: AstraColors.grey),
      focusColor: Colors.black
    );
  }

  static _lightAppBarTheme(AppBarTheme appBarTheme) {
    return appBarTheme.copyWith(
      backgroundColor: AstraColors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 17,
        color: AstraColors.gray
      ),
    );
  }
}
