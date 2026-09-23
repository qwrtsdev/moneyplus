import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/theme/app_typography.dart';
import 'package:moneyplus/src/widgets/app_page.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: Center(child: Text('การเงิน', style: AppTypography.body)),
    );
  }
}
