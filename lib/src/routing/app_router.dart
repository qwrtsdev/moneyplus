import 'package:go_router/go_router.dart';

import 'package:moneyplus/src/screens/balance_screen.dart';
import 'package:moneyplus/src/screens/finance_screen.dart';
import 'package:moneyplus/src/screens/home_screen.dart';
import 'package:moneyplus/src/screens/settings_screen.dart';
import 'package:moneyplus/src/screens/split_bill_screen.dart';
import 'package:moneyplus/src/widgets/scaffold_with_nav_bar.dart';

/// App-wide route paths, kept as constants to avoid typos elsewhere.
abstract class AppRoutes {
  static const home = '/';
  static const finance = '/finance';
  static const balance = '/balance';
  static const splitBill = '/split-bill';
  static const settings = '/settings';
}

/// Declarative routing config. Uses [StatefulShellRoute.indexedStack] so
/// each bottom-nav tab keeps its own navigation state when switching.
///
/// Every route uses [NoTransitionPage] rather than the default `builder:`
/// (which wraps pages in a Material `MaterialPage`) — the app has no
/// Material dependency, so routing shouldn't introduce one either.
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
              path: AppRoutes.finance,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: FinanceScreen()),
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
