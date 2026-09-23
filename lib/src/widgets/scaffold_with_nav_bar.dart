import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';

import 'package:moneyplus/src/theme/app_colors.dart';
import 'package:moneyplus/src/widgets/bottom_nav_bar.dart';

/// Shared shell that hosts the bottom nav bar and swaps between the
/// top-level sections via [StatefulNavigationShell], so each tab keeps its
/// own navigation stack and scroll position.
class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  static const _items = [
    BottomNavItem(
      icon: PhosphorIconsRegular.houseSimple,
      activeIcon: PhosphorIconsFill.houseSimple,
      label: 'หน้าหลัก',
    ),
    BottomNavItem(
      icon: PhosphorIconsRegular.wallet,
      activeIcon: PhosphorIconsFill.wallet,
      label: 'การเงิน',
    ),
    BottomNavItem(
      icon: PhosphorIconsRegular.piggyBank,
      activeIcon: PhosphorIconsFill.piggyBank,
      label: 'สมดุลเงิน',
    ),
    BottomNavItem(
      icon: PhosphorIconsRegular.receipt,
      activeIcon: PhosphorIconsFill.receipt,
      label: 'หารบิล',
    ),
    BottomNavItem(
      icon: PhosphorIconsRegular.gearSix,
      activeIcon: PhosphorIconsFill.gearSix,
      label: 'ตั้งค่า',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.paper,
      child: Column(
        children: [
          Expanded(child: navigationShell),
          BottomNavBar(
            items: _items,
            currentIndex: navigationShell.currentIndex,
            onTap: (index) => navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}
