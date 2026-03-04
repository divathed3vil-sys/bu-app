import 'package:flutter/material.dart';
import '../constants/bu_colors.dart';
import 'bu_typography.dart';

final class BuDarkTheme {
  BuDarkTheme._();

  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: BuColors.background,
      colorScheme: const ColorScheme.dark(
        primary: BuColors.primary,
        secondary: BuColors.secondary,
        error: BuColors.error,
      ),
      textTheme: BuTypography.textTheme.apply(
        bodyColor: BuColors.textPrimary,
        displayColor: BuColors.textPrimary,
      ),
      useMaterial3: true,
    );
  }
}
