// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:beyish_jolu/features/main/domain/models/umra_model.dart'
    as _i15;
import 'package:beyish_jolu/features/main/presentation/pages/fine/about_fine_page.dart'
    as _i1;
import 'package:beyish_jolu/features/main/presentation/pages/fine/fine_page.dart'
    as _i5;
import 'package:beyish_jolu/features/main/presentation/pages/hadj/category_hadj_page.dart'
    as _i4;
import 'package:beyish_jolu/features/main/presentation/pages/hadj/hadj_page.dart'
    as _i6;
import 'package:beyish_jolu/features/main/presentation/pages/home/about_page.dart'
    as _i2;
import 'package:beyish_jolu/features/main/presentation/pages/home/home_page.dart'
    as _i7;
import 'package:beyish_jolu/features/main/presentation/pages/preparation/about_preparation/about_preparation_page.dart'
    as _i3;
import 'package:beyish_jolu/features/main/presentation/pages/preparation/preparation_page.dart'
    as _i8;
import 'package:beyish_jolu/features/main/presentation/pages/settings/settings_page.dart'
    as _i9;
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_detail_page.dart'
    as _i10;
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_dua_page.dart'
    as _i11;
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_page.dart'
    as _i12;
import 'package:flutter/material.dart' as _i14;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AboutFineRoute.name: (routeData) {
      final args = routeData.argsAs<AboutFineRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AboutFinePage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    AboutRoute.name: (routeData) {
      final args = routeData.argsAs<AboutRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AboutPage(
          key: args.key,
          title: args.title,
          description: args.description,
          appBarTitle: args.appBarTitle,
        ),
      );
    },
    AboutPreparationRoute.name: (routeData) {
      final args = routeData.argsAs<AboutPreparationRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AboutPreparationPage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    CategoryHadjRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryHadjPage(),
      );
    },
    FineRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FinePage(),
      );
    },
    HadjRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HadjPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    PreparationRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PreparationPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingPage(),
      );
    },
    UmraDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UmraDetailRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.UmraDetailPage(
          key: args.key,
          title: args.title,
          arabicText: args.arabicText,
          subtitle: args.subtitle,
          transliteration: args.transliteration,
          translation: args.translation,
        ),
      );
    },
    UmraDuaRoute.name: (routeData) {
      final args = routeData.argsAs<UmraDuaRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.UmraDuaPage(
          key: args.key,
          section: args.section,
        ),
      );
    },
    UmraRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UmraPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutFinePage]
class AboutFineRoute extends _i13.PageRouteInfo<AboutFineRouteArgs> {
  AboutFineRoute({
    _i14.Key? key,
    required String title,
    required String description,
    List<_i13.PageRouteInfo>? children,
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

  static const _i13.PageInfo<AboutFineRouteArgs> page =
      _i13.PageInfo<AboutFineRouteArgs>(name);
}

class AboutFineRouteArgs {
  const AboutFineRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i14.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutFineRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i2.AboutPage]
class AboutRoute extends _i13.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({
    _i14.Key? key,
    required String title,
    required String description,
    required String appBarTitle,
    List<_i13.PageRouteInfo>? children,
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

  static const _i13.PageInfo<AboutRouteArgs> page =
      _i13.PageInfo<AboutRouteArgs>(name);
}

class AboutRouteArgs {
  const AboutRouteArgs({
    this.key,
    required this.title,
    required this.description,
    required this.appBarTitle,
  });

  final _i14.Key? key;

  final String title;

  final String description;

  final String appBarTitle;

  @override
  String toString() {
    return 'AboutRouteArgs{key: $key, title: $title, description: $description, appBarTitle: $appBarTitle}';
  }
}

/// generated route for
/// [_i3.AboutPreparationPage]
class AboutPreparationRoute
    extends _i13.PageRouteInfo<AboutPreparationRouteArgs> {
  AboutPreparationRoute({
    _i14.Key? key,
    required String title,
    required String description,
    List<_i13.PageRouteInfo>? children,
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

  static const _i13.PageInfo<AboutPreparationRouteArgs> page =
      _i13.PageInfo<AboutPreparationRouteArgs>(name);
}

class AboutPreparationRouteArgs {
  const AboutPreparationRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i14.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutPreparationRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i4.CategoryHadjPage]
class CategoryHadjRoute extends _i13.PageRouteInfo<void> {
  const CategoryHadjRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CategoryHadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryHadjRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FinePage]
class FineRoute extends _i13.PageRouteInfo<void> {
  const FineRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FineRoute.name,
          initialChildren: children,
        );

  static const String name = 'FineRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HadjPage]
class HadjRoute extends _i13.PageRouteInfo<void> {
  const HadjRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'HadjRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PreparationPage]
class PreparationRoute extends _i13.PageRouteInfo<void> {
  const PreparationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          PreparationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreparationRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingPage]
class SettingRoute extends _i13.PageRouteInfo<void> {
  const SettingRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UmraDetailPage]
class UmraDetailRoute extends _i13.PageRouteInfo<UmraDetailRouteArgs> {
  UmraDetailRoute({
    _i14.Key? key,
    required String title,
    required String arabicText,
    required String subtitle,
    required String transliteration,
    required String translation,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          UmraDetailRoute.name,
          args: UmraDetailRouteArgs(
            key: key,
            title: title,
            arabicText: arabicText,
            subtitle: subtitle,
            transliteration: transliteration,
            translation: translation,
          ),
          initialChildren: children,
        );

  static const String name = 'UmraDetailRoute';

  static const _i13.PageInfo<UmraDetailRouteArgs> page =
      _i13.PageInfo<UmraDetailRouteArgs>(name);
}

class UmraDetailRouteArgs {
  const UmraDetailRouteArgs({
    this.key,
    required this.title,
    required this.arabicText,
    required this.subtitle,
    required this.transliteration,
    required this.translation,
  });

  final _i14.Key? key;

  final String title;

  final String arabicText;

  final String subtitle;

  final String transliteration;

  final String translation;

  @override
  String toString() {
    return 'UmraDetailRouteArgs{key: $key, title: $title, arabicText: $arabicText, subtitle: $subtitle, transliteration: $transliteration, translation: $translation}';
  }
}

/// generated route for
/// [_i11.UmraDuaPage]
class UmraDuaRoute extends _i13.PageRouteInfo<UmraDuaRouteArgs> {
  UmraDuaRoute({
    _i14.Key? key,
    required _i15.SectionModel section,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          UmraDuaRoute.name,
          args: UmraDuaRouteArgs(
            key: key,
            section: section,
          ),
          initialChildren: children,
        );

  static const String name = 'UmraDuaRoute';

  static const _i13.PageInfo<UmraDuaRouteArgs> page =
      _i13.PageInfo<UmraDuaRouteArgs>(name);
}

class UmraDuaRouteArgs {
  const UmraDuaRouteArgs({
    this.key,
    required this.section,
  });

  final _i14.Key? key;

  final _i15.SectionModel section;

  @override
  String toString() {
    return 'UmraDuaRouteArgs{key: $key, section: $section}';
  }
}

/// generated route for
/// [_i12.UmraPage]
class UmraRoute extends _i13.PageRouteInfo<void> {
  const UmraRoute({List<_i13.PageRouteInfo>? children})
      : super(
          UmraRoute.name,
          initialChildren: children,
        );

  static const String name = 'UmraRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
