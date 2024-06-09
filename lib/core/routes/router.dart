import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(page: HadjRoute.page),
        AutoRoute(page: PreparationRoute.page),
        AutoRoute(page: FineRoute.page),
        AutoRoute(page: UmraRoute.page),
        AutoRoute(page: UmraDuaRoute.page),

        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: UmraDetailRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: UmraDetailRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: CategoryHadjRoute.page)
      ];
}
