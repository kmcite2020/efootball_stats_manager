import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

@immutable
class Settings {
  ThemeMode get themeMode => _themeMode.state;
  MaterialColor get materialColor => _color.state;
  String? get font => GoogleFonts.getFont(_font.state ?? 'Dosis').fontFamily;
  double get padding => _padding.state;
  double get borderRadius => _borderRadius.state;
  double get appBarHeight => 80;
  final _themeMode = RM.inject<ThemeMode>(() => ThemeMode.system);
  final _color = RM.inject<MaterialColor>(() => Colors.blue);
  final _font = RM.inject<String?>(() => null);
  final _padding = RM.inject<double>(() => 10);
  final _borderRadius = RM.inject<double>(() => 20);
  set themeMode(val) => _themeMode.state;
  set color(val) => _color.state = val;
  set font(val) => _font.state = val;
  set padding(val) => _padding.state = val;
  set border(val) => _borderRadius.state = val;
}

final settings = Settings();
