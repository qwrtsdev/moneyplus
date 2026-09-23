import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/theme/app_colors.dart';

/// A full-bleed page body on the app's paper-white background — the
/// non-Material stand-in for `Scaffold`. No title bar: screens render their
/// content directly.
class AppPage extends StatelessWidget {
  const AppPage({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.paper,
      child: SafeArea(bottom: false, child: body),
    );
  }
}
