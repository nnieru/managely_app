import 'package:go_router/go_router.dart';
import 'package:managely/pages/home/home.dart';
import 'package:managely/pages/home/view/home_page.dart';
import 'package:managely/pages/summary/summary.dart';
import 'package:managely/pages/summary/view/summary_page.dart';

class RouterFactory {
  static GoRouter generateRoute() {
    return GoRouter(routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
                path: 'summary',
                builder: (context, state) => const SummaryPage()),
          ]),
    ]);
  }
}
