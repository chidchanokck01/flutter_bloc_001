part of 'main.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'main',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          name: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailPage();
          },
        ),
        GoRoute(
          path: 'calculator',
          name: 'calculator',
          builder: (BuildContext context, GoRouterState state) {
            return const CalculatorPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'calculator2',
              name: 'calculator2',
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
