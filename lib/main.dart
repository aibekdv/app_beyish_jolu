import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:beyish_jolu/core/routes/router.dart';
import 'package:beyish_jolu/features/main/domain/repositories/settings/setting_repository.dart';

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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
