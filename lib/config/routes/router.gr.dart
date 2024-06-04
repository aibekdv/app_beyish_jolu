// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:beyish_jolu/home/presentation/pages/home/fine/fine_page.dart'
    as _i2;
import 'package:beyish_jolu/home/presentation/pages/home/hadj/about_hadj/about_hadj_page.dart'
    as _i1;
import 'package:beyish_jolu/home/presentation/pages/home/hadj/hadj_page.dart'
    as _i3;
import 'package:beyish_jolu/home/presentation/pages/home/home_page.dart' as _i4;
import 'package:beyish_jolu/home/presentation/pages/home/preparation/preparation_page.dart'
    as _i5;
import 'package:beyish_jolu/home/presentation/pages/home/setting/setting_page.dart'
    as _i6;
import 'package:beyish_jolu/home/presentation/pages/home/umra/umra_page.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AboutHadjRoute.name: (routeData) {
      final args = routeData.argsAs<AboutHadjRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AboutHadjPage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    FineRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FinePage(),
      );
    },
    HadjRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HadjPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    PreparationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PreparationPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingPage(),
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
/// [_i1.AboutHadjPage]
class AboutHadjRoute extends _i8.PageRouteInfo<AboutHadjRouteArgs> {
  AboutHadjRoute({
    _i9.Key? key,
    required String title,
    required String description,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AboutHadjRoute.name,
          args: AboutHadjRouteArgs(
            key: key,
            title: title,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutHadjRoute';

  static const _i8.PageInfo<AboutHadjRouteArgs> page =
      _i8.PageInfo<AboutHadjRouteArgs>(name);
}

class AboutHadjRouteArgs {
  const AboutHadjRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i9.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutHadjRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i2.FinePage]
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
/// [_i3.HadjPage]
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
/// [_i5.PreparationPage]
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
/// [_i6.SettingPage]
class SettingRoute extends _i8.PageRouteInfo<void> {
  const SettingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

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
