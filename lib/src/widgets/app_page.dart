import 'package:flutter/widgets.dart';
import 'package:moneyplus/src/utils/app_theme.dart';

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
