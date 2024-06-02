import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/config/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: HadjRoute.page),
        AutoRoute(page: UmraRoute.page),
        AutoRoute(page: FineRoute.page),
        AutoRoute(page: PreparationRoute.page),
      ];
}
