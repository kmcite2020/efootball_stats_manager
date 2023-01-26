import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/home/home.dart';
import 'shared/dark_theme.dart';
import 'shared/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'eFootball Stats Manager'),
    );
  }
}
