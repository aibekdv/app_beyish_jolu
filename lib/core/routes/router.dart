import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HadjRoute.page),
        AutoRoute(page: PreparationRoute.page),
        AutoRoute(page: FineRoute.page),
        AutoRoute(page: UmraRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: AboutHadjRoute.page),
        AutoRoute(page: AboutFineRoute.page),
        AutoRoute(page: AboutPreparationRoute.page),
        AutoRoute(page: CategoryHadjRoute.page),
      ];
}
