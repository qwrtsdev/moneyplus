import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/utils/app_theme.dart';
import 'package:moneyplus/src/widgets/app_page.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: Center(child: Text('สมดุลเงิน', style: AppTypography.body)),
    );
  }
}
