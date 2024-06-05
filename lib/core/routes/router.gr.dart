// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:beyish_jolu/main/presentation/pages/fine/fine_page.dart' as _i3;
import 'package:beyish_jolu/main/presentation/pages/hadj/category_hadj_page.dart'
    as _i2;
import 'package:beyish_jolu/main/presentation/pages/hadj/hadj_page.dart' as _i4;
import 'package:beyish_jolu/main/presentation/pages/home/about_page.dart'
    as _i1;
import 'package:beyish_jolu/main/presentation/pages/home/home_page.dart' as _i5;
import 'package:beyish_jolu/main/presentation/pages/preparation/preparation_page.dart'
    as _i6;
import 'package:beyish_jolu/main/presentation/pages/settings/settings_page.dart'
    as _i7;
import 'package:beyish_jolu/main/presentation/pages/umra/umra_page.dart' as _i8;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      final args = routeData.argsAs<AboutRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AboutPage(
          key: args.key,
          title: args.title,
          description: args.description,
          appBarTitle: args.appBarTitle,
        ),
      );
    },
    CategoryHadjRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoryHadjPage(),
      );
    },
    FineRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FinePage(),
      );
    },
    HadjRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HadjPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    PreparationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PreparationPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingPage(),
      );
    },
    UmraRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UmraPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i9.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({
    _i10.Key? key,
    required String title,
    required String description,
    required String appBarTitle,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          AboutRoute.name,
          args: AboutRouteArgs(
            key: key,
            title: title,
            description: description,
            appBarTitle: appBarTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i9.PageInfo<AboutRouteArgs> page =
      _i9.PageInfo<AboutRouteArgs>(name);
}

class AboutRouteArgs {
  const AboutRouteArgs({
    this.key,
    required this.title,
    required this.description,
    required this.appBarTitle,
  });

  final _i10.Key? key;

  final String title;

  final String description;

  final String appBarTitle;

  @override
  String toString() {
    return 'AboutRouteArgs{key: $key, title: $title, description: $description, appBarTitle: $appBarTitle}';
  }
}

/// generated route for
/// [_i2.CategoryHadjPage]
class CategoryHadjRoute extends _i9.PageRouteInfo<void> {
  const CategoryHadjRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CategoryHadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryHadjRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FinePage]
class FineRoute extends _i9.PageRouteInfo<void> {
  const FineRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FineRoute.name,
          initialChildren: children,
        );

  static const String name = 'FineRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HadjPage]
class HadjRoute extends _i9.PageRouteInfo<void> {
  const HadjRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'HadjRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PreparationPage]
class PreparationRoute extends _i9.PageRouteInfo<void> {
  const PreparationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PreparationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreparationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingPage]
class SettingRoute extends _i9.PageRouteInfo<void> {
  const SettingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UmraPage]
class UmraRoute extends _i9.PageRouteInfo<void> {
  const UmraRoute({List<_i9.PageRouteInfo>? children})
      : super(
          UmraRoute.name,
          initialChildren: children,
        );

  static const String name = 'UmraRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
