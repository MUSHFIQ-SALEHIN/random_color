import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:random_color/screens/home_screen.dart';
import 'package:random_color/screens/splash_screen.dart';
import 'package:random_color/utils/global_variable_keys.dart';
import 'package:random_color/utils/routes.dart';

final GoRouter routerConfig = GoRouter(
  navigatorKey: GlobalVariableKeys.navigatorState,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);
