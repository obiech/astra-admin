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
      // appBarTheme: _lightAppBarTheme(base.appBarTheme),
      // backgroundColor: textWhait,
      // accentColor: textBlack,
      // scaffoldBackgroundColor: textWhait,
      // cardTheme: _lightCardTheme(base.cardTheme),
      // bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      //   selectedItemColor: Colors.green,
      //   selectedLabelStyle: TextStyle(color: Colors.green),
      //   unselectedItemColor: Colors.grey,
      //   selectedIconTheme: base.iconTheme.copyWith(
      //     color: Colors.green,
      //   ),
      // ),

      //_lightBarThemeData(base.bottomNavigationBarTheme),
      //textTheme: _lightTextTheme(base.textTheme),
    );
  }

  static _lightTextTheme(TextTheme baseTextTheme) {
    return baseTextTheme.copyWith(
      headline5: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 28,
      ),
      subtitle1: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 17,
      ),
      caption: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 12, color: AstraColors.grey),
    );
  }

  static _lightInputDecorationTheme(InputDecorationTheme inputDecorationTheme) {
    return inputDecorationTheme.copyWith(
      hintStyle: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 12, color: AstraColors.grey),
    );
  }

  // static _lightAppBarTheme(AppBarTheme appBarTheme) {
  //   return appBarTheme.copyWith(
  //     backgroundColor: AstraColors.white,
  //     elevation: 0,
  //     centerTitle: true,
  //     titleTextStyle: lightTheme.textTheme.subtitle1?.copyWith(color: AstraColors.gray)
  //   );
  // }
}
