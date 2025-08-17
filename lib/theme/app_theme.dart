import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const background = Color(0xFFFFFFFF);
  static const textPrimary = Color(0xFF000000);
  static const textSecondary = Color(0xFF8E8E93);
  static const searchFill = Color(0xFFF2F2F2);
  static const hint = Color(0xFF6E6E6E);
  static const navUnselected = Color(0xFFB0B0B0);
  static const navSelected = Colors.deepPurpleAccent;
  static const cardBorder = Color(0xFFE9E9EA);
}

class AppSpacing {
  static const s = 8.0;
  static const m = 12.0;
  static const l = 16.0;
  static const xl = 20.0;
  static const radius = 12.0;
}

TextTheme _textTheme(Color primary, Color secondary) {
  return TextTheme(
    // Section titles: "Categories", "Top Selling"
    titleLarge: GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w700, color: primary),
    // Product name
    titleMedium: GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, color: primary),
    // Normal text
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: primary),
    // Secondary/captions
    bodySmall: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, color: secondary),
    labelSmall: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, color: secondary),
  );
}

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: const ColorScheme.light(
      primary: AppColors.textPrimary,
      surface: AppColors.background,
    ),
    textTheme: _textTheme(AppColors.textPrimary, AppColors.textSecondary),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
      iconTheme: const IconThemeData(color: AppColors.textPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: AppColors.searchFill,
      hintStyle: GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.hint),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l, vertical: AppSpacing.m),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radius),
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.navSelected,
      unselectedItemColor: AppColors.navUnselected,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
    cardTheme: CardThemeData(
      color: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radius),
        side: const BorderSide(color: AppColors.cardBorder),
      ),
      elevation: 0,
      margin: EdgeInsets.zero,
    ),
  );
}
