part of 'main.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailPage();
          },
        ),
        GoRoute(
          path: 'calculator',
          builder: (BuildContext context, GoRouterState state) {
            return const CalculatorPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'calculator2',
              builder: (BuildContext context, GoRouterState state) {
                return const Calculator2Page();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
