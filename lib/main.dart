import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/settings/settings_bloc.dart';
import 'navigator.dart';
import 'shared/dark_theme.dart';
import 'shared/initializer_list.dart';
import 'shared/light_theme.dart';

void main() async {
  RM.transitions.leftToRight(duration: 600.milliseconds);
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: navigator.routeInformationParser,
      routerDelegate: navigator.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: settingsBloc.themeMode,
    );
  }
}
