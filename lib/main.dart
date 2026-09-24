import 'package:flutter/widgets.dart';
import 'package:moneyplus/src/utils/app_router.dart';
import 'package:moneyplus/src/utils/app_theme.dart';

void main() {
  runApp(const MainApp());
}

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
