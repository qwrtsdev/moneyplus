import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const ink = Color(0xFF111111);
  static const paper = Color(0xFFFFFFFF);
  static const muted = Color(0xFF8A8A8A);
  static const divider = Color(0xFFE4E4E4);
  static const surface = Color(0xFFF6F6F6);
}

abstract class AppRadius {
  static const double indicator = 2;
}

abstract class AppTypography {
  static TextStyle get body =>
      GoogleFonts.notoSansThai(fontSize: 15, color: AppColors.ink, height: 1.4);

  static TextStyle get navLabel => GoogleFonts.notoSansThai(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.muted,
  );

  static TextStyle get navLabelActive =>
      navLabel.copyWith(color: AppColors.ink, fontWeight: FontWeight.w700);
}
