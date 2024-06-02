// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:beyish_jolu/features/home/presentation/pages/fine/fine_page.dart'
    as _i1;
import 'package:beyish_jolu/features/home/presentation/pages/hadj/hadj_page.dart'
    as _i2;
import 'package:beyish_jolu/features/home/presentation/pages/home/home_en_page.dart'
    as _i3;
import 'package:beyish_jolu/features/home/presentation/pages/home/home_page.dart'
    as _i4;
import 'package:beyish_jolu/features/home/presentation/pages/main/main_page.dart'
    as _i5;
import 'package:beyish_jolu/features/home/presentation/pages/preparation/preparation_page.dart'
    as _i6;
import 'package:beyish_jolu/features/home/presentation/pages/umra/umra_page.dart'
    as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    FineRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FinePage(),
      );
    },
    HadjRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HadjPage(),
      );
    },
    HomeEnglishRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeEnglishPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    PreparationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PreparationPage(),
      );
    },
    UmraRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.UmraPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.FinePage]
class FineRoute extends _i8.PageRouteInfo<void> {
  const FineRoute({List<_i8.PageRouteInfo>? children})
      : super(
          FineRoute.name,
          initialChildren: children,
        );

  static const String name = 'FineRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HadjPage]
class HadjRoute extends _i8.PageRouteInfo<void> {
  const HadjRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'HadjRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeEnglishPage]
class HomeEnglishRoute extends _i8.PageRouteInfo<void> {
  const HomeEnglishRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeEnglishRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeEnglishRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PreparationPage]
class PreparationRoute extends _i8.PageRouteInfo<void> {
  const PreparationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PreparationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreparationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.UmraPage]
class UmraRoute extends _i8.PageRouteInfo<void> {
  const UmraRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UmraRoute.name,
          initialChildren: children,
        );

  static const String name = 'UmraRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
