import 'package:flutter/material.dart';
import 'package:news_brief/app/theme/theme.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: ThemeColors.secondaryWhite,
      colorScheme: _colorScheme,
      appBarTheme: _appBarTheme,
      textTheme: _textTheme,
      iconTheme: _iconTheme,
    );
  }
}

ColorScheme _colorScheme = ColorScheme.fromSeed(
  seedColor: ThemeColors.accent,
);

AppBarTheme _appBarTheme = AppBarTheme(
  centerTitle: true,
  toolbarHeight: 50,
  titleTextStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ThemeColors.white,
  ),
  iconTheme: _iconTheme.copyWith(
    color: ThemeColors.white,
  ),
  backgroundColor: ThemeColors.accent,
  scrolledUnderElevation: 0.0,
);

TextTheme _textTheme = TextTheme(
  displayLarge: TextStyle(
    color: ThemeColors.black,
    fontWeight: FontWeight.bold,
    height: 1,
  ),
  displayMedium: TextStyle(
    color: ThemeColors.black,
    fontWeight: FontWeight.bold,
    height: 1,
  ),
  displaySmall: TextStyle(
    color: ThemeColors.black,
    fontWeight: FontWeight.bold,
    height: 1,
  ),
  headlineLarge: TextStyle(
    color: ThemeColors.black,
    fontWeight: FontWeight.bold,
    height: 1,
  ),
  headlineMedium: TextStyle(
    color: ThemeColors.black,
    fontWeight: FontWeight.bold,
    height: 1,
  ),
);

IconThemeData _iconTheme = IconThemeData(
  color: ThemeColors.black,
  size: 24,
);