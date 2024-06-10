import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:flutter/material.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Custom transitions
        CustomRoute(page: HadjRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: PreparationRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: FineRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: UmraRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: UmraDuaRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: AboutRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: UmraDetailRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: AboutRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: UmraDetailRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: SplashRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(page: CategoryHadjRoute.page, transitionsBuilder: ctnoAnm),
        CustomRoute(
          initial: true,
          page: HomeRoute.page,
          transitionsBuilder: ctnoAnm,
        ),
      ];
}

// Custom transition builder function
Widget ctnoAnm(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return CupertinoPageTransition(
    primaryRouteAnimation: animation,
    secondaryRouteAnimation: secondaryAnimation,
    linearTransition: true,
    child: child,
  );
}
