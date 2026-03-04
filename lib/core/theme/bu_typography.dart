import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class BuTypography {
  BuTypography._();

  static TextTheme textTheme = TextTheme(
    headlineLarge: GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
    bodyLarge: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
    labelMedium: GoogleFonts.jetBrainsMono(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  );
}
