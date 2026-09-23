import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/theme/app_typography.dart';
import 'package:moneyplus/src/widgets/app_page.dart';

class SplitBillScreen extends StatelessWidget {
  const SplitBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: Center(child: Text('หารบิล', style: AppTypography.body)),
    );
  }
}
