import 'package:flutter/widgets.dart';

import 'package:moneyplus/src/theme/app_typography.dart';
import 'package:moneyplus/src/widgets/app_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: Center(child: Text('หน้าหลัก', style: AppTypography.body)),
    );
  }
}
