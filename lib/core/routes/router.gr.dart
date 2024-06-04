// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:beyish_jolu/main/presentation/pages/fine/about_fine_page.dart'
    as _i1;
import 'package:beyish_jolu/main/presentation/pages/fine/fine_page.dart' as _i5;
import 'package:beyish_jolu/main/presentation/pages/hadj/about_hadj/about_hadj_page.dart'
    as _i2;
import 'package:beyish_jolu/main/presentation/pages/hadj/category_hadj_page.dart'
    as _i4;
import 'package:beyish_jolu/main/presentation/pages/hadj/hadj_page.dart' as _i6;
import 'package:beyish_jolu/main/presentation/pages/home/home_page.dart' as _i7;
import 'package:beyish_jolu/main/presentation/pages/preparation/about_preparation/about_preparation_page.dart'
    as _i3;
import 'package:beyish_jolu/main/presentation/pages/preparation/preparation_page.dart'
    as _i8;
import 'package:beyish_jolu/main/presentation/pages/settings/settings_page.dart'
    as _i9;
import 'package:beyish_jolu/main/presentation/pages/umra/umra_page.dart'
    as _i10;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AboutFineRoute.name: (routeData) {
      final args = routeData.argsAs<AboutFineRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AboutFinePage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    AboutHadjRoute.name: (routeData) {
      final args = routeData.argsAs<AboutHadjRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AboutHadjPage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    AboutPreparationRoute.name: (routeData) {
      final args = routeData.argsAs<AboutPreparationRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AboutPreparationPage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    CategoryHadjRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryHadjPage(),
      );
    },
    FineRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FinePage(),
      );
    },
    HadjRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HadjPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    PreparationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PreparationPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingPage(),
      );
    },
    UmraRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UmraPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutFinePage]
class AboutFineRoute extends _i11.PageRouteInfo<AboutFineRouteArgs> {
  AboutFineRoute({
    _i12.Key? key,
    required String title,
    required String description,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AboutFineRoute.name,
          args: AboutFineRouteArgs(
            key: key,
            title: title,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutFineRoute';

  static const _i11.PageInfo<AboutFineRouteArgs> page =
      _i11.PageInfo<AboutFineRouteArgs>(name);
}

class AboutFineRouteArgs {
  const AboutFineRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i12.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutFineRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i2.AboutHadjPage]
class AboutHadjRoute extends _i11.PageRouteInfo<AboutHadjRouteArgs> {
  AboutHadjRoute({
    _i12.Key? key,
    required String title,
    required String description,
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<AboutHadjRouteArgs> page =
      _i11.PageInfo<AboutHadjRouteArgs>(name);
}

class AboutHadjRouteArgs {
  const AboutHadjRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i12.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutHadjRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i3.AboutPreparationPage]
class AboutPreparationRoute
    extends _i11.PageRouteInfo<AboutPreparationRouteArgs> {
  AboutPreparationRoute({
    _i12.Key? key,
    required String title,
    required String description,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AboutPreparationRoute.name,
          args: AboutPreparationRouteArgs(
            key: key,
            title: title,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutPreparationRoute';

  static const _i11.PageInfo<AboutPreparationRouteArgs> page =
      _i11.PageInfo<AboutPreparationRouteArgs>(name);
}

class AboutPreparationRouteArgs {
  const AboutPreparationRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i12.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutPreparationRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i4.CategoryHadjPage]
class CategoryHadjRoute extends _i11.PageRouteInfo<void> {
  const CategoryHadjRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CategoryHadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryHadjRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FinePage]
class FineRoute extends _i11.PageRouteInfo<void> {
  const FineRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FineRoute.name,
          initialChildren: children,
        );

  static const String name = 'FineRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HadjPage]
class HadjRoute extends _i11.PageRouteInfo<void> {
  const HadjRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'HadjRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PreparationPage]
class PreparationRoute extends _i11.PageRouteInfo<void> {
  const PreparationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PreparationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreparationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingPage]
class SettingRoute extends _i11.PageRouteInfo<void> {
  const SettingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UmraPage]
class UmraRoute extends _i11.PageRouteInfo<void> {
  const UmraRoute({List<_i11.PageRouteInfo>? children})
      : super(
          UmraRoute.name,
          initialChildren: children,
        );

  static const String name = 'UmraRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
