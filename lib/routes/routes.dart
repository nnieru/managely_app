import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managely/pages/home/view/home_page.dart';
import 'package:managely/pages/main/view/main_page.dart';
import 'package:managely/pages/profile/view/profile_page.dart';
import 'package:managely/pages/summary/view/second_summ_page.dart';
import 'package:managely/pages/summary/view/summary_page.dart';
import 'package:managely/pages/task/view/task_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class RouterFactory {
  static GoRouter generateRoute() {
    return GoRouter(
        navigatorKey: _rootNavigatorKey,
        routes: [
          StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) => MainPage(
                    navigationShell: navigationShell,
                  ),
              branches: [
                StatefulShellBranch(
                    navigatorKey:
                        GlobalKey<NavigatorState>(debugLabel: 'home_shell'),
                    routes: [
                      GoRoute(
                        path: '/home',
                        builder: (context, state) => HomaPage(),
                      ),
                    ]),
                StatefulShellBranch(
                    navigatorKey:
                        GlobalKey<NavigatorState>(debugLabel: 'task_shell'),
                    routes: [
                      GoRoute(
                          path: '/task',
                          builder: (context, state) {
                            final filterId = state.extra.toString();
                            return TaskPage(
                              filterId: filterId,
                            );
                          }),
                    ]),
                StatefulShellBranch(
                    navigatorKey:
                        GlobalKey<NavigatorState>(debugLabel: 'summary_shell'),
                    routes: [
                      GoRoute(
                          path: '/summary',
                          builder: (context, state) => SummaryPage(),
                          routes: [
                            GoRoute(
                              parentNavigatorKey: _rootNavigatorKey,
                              path: 'second/:id',
                              builder: (context, state) => SecondSummPage(
                                  id: int.tryParse(
                                          state.pathParameters['id'] ?? '') ??
                                      0),
                            )
                          ]),
                    ]),
              ]),
        ],
        initialLocation: '/home');
  }
}
