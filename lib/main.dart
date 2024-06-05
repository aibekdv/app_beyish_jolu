// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:beyish_jolu/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:beyish_jolu/core/routes/router.dart';
import 'package:beyish_jolu/core/theme/theme.dart';
import 'package:beyish_jolu/main/domain/repositories/settings/setting_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(
    preferences: await SharedPreferences.getInstance(),
  ));
}

AppRouter appRouter = AppRouter();

class MyApp extends StatefulWidget {
  final SharedPreferences preferences;

  const MyApp({
    super.key,
    required this.preferences,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SettingRepository settingRepository = SettingRepository(
    preferences: widget.preferences,
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(settingRepository: settingRepository),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: themeState.isdark ? darkTheme : lightTheme,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
