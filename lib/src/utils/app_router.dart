import 'package:go_router/go_router.dart';
import 'package:moneyplus/src/pages/balance_page.dart';
import 'package:moneyplus/src/pages/home_page.dart';
import 'package:moneyplus/src/pages/settings_page.dart';
import 'package:moneyplus/src/pages/split_bill_page.dart';
import 'package:moneyplus/src/widgets/navigation_bar.dart';

abstract class AppRoutes {
  static const home = '/';
  static const balance = '/balance';
  static const splitBill = '/split-bill';
  static const settings = '/settings';
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithNavBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: HomeScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.balance,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: BalanceScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.splitBill,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: SplitBillScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.settings,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: SettingsScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
);
