import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/routing/app_router.dart';
import 'package:moneyplus/src/theme/app_colors.dart';
import 'package:moneyplus/src/theme/app_typography.dart';

void main() {
  runApp(const MainApp());
}

/// The app root. Deliberately [WidgetsApp], not `MaterialApp` — the app has
/// no Material Design dependency (no `Scaffold`, no `Icons`, no
/// `ColorScheme`), so it shouldn't pull in the Material widget library
/// either. [WidgetsApp.router] supports go_router's `routerConfig` exactly
/// like `MaterialApp.router` does.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp.router(
      title: 'MoneyPlus',
      color: AppColors.ink,
      debugShowCheckedModeBanner: false,
      textStyle: AppTypography.body,
      routerConfig: appRouter,
    );
  }
}
