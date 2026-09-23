import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:moneyplus/src/theme/app_colors.dart';

/// Text styles built on Noto Sans Thai — the app's base typeface — instead
/// of a Material [TextTheme]. Plain constants, since there's no ambient
/// Material `Theme` to hang a theme extension off of.
abstract class AppTypography {
  static TextStyle get body => GoogleFonts.notoSansThai(
        fontSize: 15,
        color: AppColors.ink,
        height: 1.4,
      );

  static TextStyle get navLabel => GoogleFonts.notoSansThai(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: AppColors.muted,
      );

  static TextStyle get navLabelActive =>
      navLabel.copyWith(color: AppColors.ink, fontWeight: FontWeight.w700);
}
