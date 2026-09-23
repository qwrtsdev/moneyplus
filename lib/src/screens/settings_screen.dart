import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/theme/app_typography.dart';
import 'package:moneyplus/src/widgets/app_page.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: Center(child: Text('ตั้งค่า', style: AppTypography.body)),
    );
  }
}
