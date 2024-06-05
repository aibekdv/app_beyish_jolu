// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
<<<<<<< HEAD
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:beyish_jolu/features/main/domain/models/umra_model.dart'
    as _i14;
import 'package:beyish_jolu/features/main/presentation/pages/fine/about_fine_page.dart'
    as _i1;
import 'package:beyish_jolu/features/main/presentation/pages/fine/fine_page.dart'
    as _i4;
import 'package:beyish_jolu/features/main/presentation/pages/hadj/about_hadj/about_hadj_page.dart'
    as _i2;
import 'package:beyish_jolu/features/main/presentation/pages/hadj/hadj_page.dart'
    as _i5;
import 'package:beyish_jolu/features/main/presentation/pages/home/home_page.dart'
    as _i6;
import 'package:beyish_jolu/features/main/presentation/pages/preparation/about_preparation/about_preparation_page.dart'
    as _i3;
import 'package:beyish_jolu/features/main/presentation/pages/preparation/preparation_page.dart'
    as _i7;
import 'package:beyish_jolu/features/main/presentation/pages/settings/settings_page.dart'
    as _i8;
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_detail_page.dart'
    as _i9;
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_dua_page.dart'
    as _i10;
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_page.dart'
    as _i11;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AboutFineRoute.name: (routeData) {
      final args = routeData.argsAs<AboutFineRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
=======
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
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
        routeData: routeData,
        child: _i1.AboutPage(
          key: args.key,
          title: args.title,
          description: args.description,
          appBarTitle: args.appBarTitle,
        ),
      );
    },
<<<<<<< HEAD
    AboutHadjRoute.name: (routeData) {
      final args = routeData.argsAs<AboutHadjRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
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
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AboutPreparationPage(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    FineRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
=======
    CategoryHadjRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoryHadjPage(),
      );
    },
    FineRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
        routeData: routeData,
        child: const _i3.FinePage(),
      );
    },
    HadjRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i9.AutoRoutePage<dynamic>(
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
        routeData: routeData,
        child: const _i4.HadjPage(),
      );
    },
    HomeRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i9.AutoRoutePage<dynamic>(
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    PreparationRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i9.AutoRoutePage<dynamic>(
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
        routeData: routeData,
        child: const _i6.PreparationPage(),
      );
    },
    SettingRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i9.AutoRoutePage<dynamic>(
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
        routeData: routeData,
        child: const _i7.SettingPage(),
      );
    },
<<<<<<< HEAD
    UmraDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UmraDetailRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.UmraDetailPage(
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
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.UmraDuaPage(
          key: args.key,
          section: args.section,
        ),
      );
    },
    UmraRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UmraPage(),
=======
    UmraRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UmraPage(),
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      );
    },
  };
}

/// generated route for
<<<<<<< HEAD
/// [_i1.AboutFinePage]
class AboutFineRoute extends _i12.PageRouteInfo<AboutFineRouteArgs> {
  AboutFineRoute({
    _i13.Key? key,
    required String title,
    required String description,
    List<_i12.PageRouteInfo>? children,
=======
/// [_i1.AboutPage]
class AboutRoute extends _i9.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({
    _i10.Key? key,
    required String title,
    required String description,
    required String appBarTitle,
    List<_i9.PageRouteInfo>? children,
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
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

<<<<<<< HEAD
  static const _i12.PageInfo<AboutFineRouteArgs> page =
      _i12.PageInfo<AboutFineRouteArgs>(name);
=======
  static const _i9.PageInfo<AboutRouteArgs> page =
      _i9.PageInfo<AboutRouteArgs>(name);
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
}

class AboutRouteArgs {
  const AboutRouteArgs({
    this.key,
    required this.title,
    required this.description,
    required this.appBarTitle,
  });

<<<<<<< HEAD
  final _i13.Key? key;
=======
  final _i10.Key? key;
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c

  final String title;

  final String description;

  final String appBarTitle;

  @override
  String toString() {
    return 'AboutRouteArgs{key: $key, title: $title, description: $description, appBarTitle: $appBarTitle}';
  }
}

/// generated route for
<<<<<<< HEAD
/// [_i2.AboutHadjPage]
class AboutHadjRoute extends _i12.PageRouteInfo<AboutHadjRouteArgs> {
  AboutHadjRoute({
    _i13.Key? key,
    required String title,
    required String description,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AboutHadjRoute.name,
          args: AboutHadjRouteArgs(
            key: key,
            title: title,
            description: description,
          ),
=======
/// [_i2.CategoryHadjPage]
class CategoryHadjRoute extends _i9.PageRouteInfo<void> {
  const CategoryHadjRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CategoryHadjRoute.name,
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
          initialChildren: children,
        );

  static const String name = 'CategoryHadjRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<AboutHadjRouteArgs> page =
      _i12.PageInfo<AboutHadjRouteArgs>(name);
}

class AboutHadjRouteArgs {
  const AboutHadjRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i13.Key? key;

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
    extends _i12.PageRouteInfo<AboutPreparationRouteArgs> {
  AboutPreparationRoute({
    _i13.Key? key,
    required String title,
    required String description,
    List<_i12.PageRouteInfo>? children,
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

  static const _i12.PageInfo<AboutPreparationRouteArgs> page =
      _i12.PageInfo<AboutPreparationRouteArgs>(name);
}

class AboutPreparationRouteArgs {
  const AboutPreparationRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i13.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'AboutPreparationRouteArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i4.FinePage]
class FineRoute extends _i12.PageRouteInfo<void> {
  const FineRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FinePage]
class FineRoute extends _i9.PageRouteInfo<void> {
  const FineRoute({List<_i9.PageRouteInfo>? children})
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      : super(
          FineRoute.name,
          initialChildren: children,
        );

  static const String name = 'FineRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HadjPage]
class HadjRoute extends _i12.PageRouteInfo<void> {
  const HadjRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HadjPage]
class HadjRoute extends _i9.PageRouteInfo<void> {
  const HadjRoute({List<_i9.PageRouteInfo>? children})
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      : super(
          HadjRoute.name,
          initialChildren: children,
        );

  static const String name = 'HadjRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PreparationPage]
class PreparationRoute extends _i12.PageRouteInfo<void> {
  const PreparationRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PreparationPage]
class PreparationRoute extends _i9.PageRouteInfo<void> {
  const PreparationRoute({List<_i9.PageRouteInfo>? children})
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      : super(
          PreparationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreparationRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i12.PageRouteInfo<void> {
  const SettingRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingPage]
class SettingRoute extends _i9.PageRouteInfo<void> {
  const SettingRoute({List<_i9.PageRouteInfo>? children})
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UmraDetailPage]
class UmraDetailRoute extends _i12.PageRouteInfo<UmraDetailRouteArgs> {
  UmraDetailRoute({
    _i13.Key? key,
    required String title,
    required String arabicText,
    required String subtitle,
    required String transliteration,
    required String translation,
    List<_i12.PageRouteInfo>? children,
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

  static const _i12.PageInfo<UmraDetailRouteArgs> page =
      _i12.PageInfo<UmraDetailRouteArgs>(name);
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

  final _i13.Key? key;

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
/// [_i10.UmraDuaPage]
class UmraDuaRoute extends _i12.PageRouteInfo<UmraDuaRouteArgs> {
  UmraDuaRoute({
    _i13.Key? key,
    required _i14.SectionModel section,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          UmraDuaRoute.name,
          args: UmraDuaRouteArgs(
            key: key,
            section: section,
          ),
          initialChildren: children,
        );

  static const String name = 'UmraDuaRoute';

  static const _i12.PageInfo<UmraDuaRouteArgs> page =
      _i12.PageInfo<UmraDuaRouteArgs>(name);
}

class UmraDuaRouteArgs {
  const UmraDuaRouteArgs({
    this.key,
    required this.section,
  });

  final _i13.Key? key;

  final _i14.SectionModel section;

  @override
  String toString() {
    return 'UmraDuaRouteArgs{key: $key, section: $section}';
  }
}

/// generated route for
/// [_i11.UmraPage]
class UmraRoute extends _i12.PageRouteInfo<void> {
  const UmraRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UmraPage]
class UmraRoute extends _i9.PageRouteInfo<void> {
  const UmraRoute({List<_i9.PageRouteInfo>? children})
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
      : super(
          UmraRoute.name,
          initialChildren: children,
        );

  static const String name = 'UmraRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
=======
  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
>>>>>>> ef9b2f2a4225dfb3eed867f27684caa4b3bf378c
}
