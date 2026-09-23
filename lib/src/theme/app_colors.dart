import 'package:flutter/widgets.dart';

/// Strict monochrome palette — no Material Design color system, no accent
/// colors. Every visual in the app draws from these five tokens.
abstract class AppColors {
  static const ink = Color(0xFF111111);
  static const paper = Color(0xFFFFFFFF);
  static const muted = Color(0xFF8A8A8A);
  static const divider = Color(0xFFE4E4E4);
  static const surface = Color(0xFFF6F6F6);
}
