// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:efootball_stats_manager/features/settings/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

@immutable
class SettingsBloc {
  // ignore: non_constant_identifier_names
  final _settingsRM = RM.inject<SettingsModel>(
    () => SettingsModel.init,
    persist: () => PersistState(
      key: 'SettingsModel',
      toJson: (s) => s.toJson(),
      fromJson: (json) => SettingsModel.fromJson(json),
    ),
  );
  SettingsModel get settings => _settingsRM.state;
  set settings(SettingsModel val) => _settingsRM.state = val;

  ThemeMode get themeMode => settings.themeModeX.themeMode;
  MaterialColor get materialColor => settings.materialColorX.color;
  String get font {
    return settings.font;
    // try {
    //   return GoogleFonts.getFont(settings.font).fontFamily;
    // } on Exception catch (e) {
    //   return showException(e);
    // }
  }

  double get padding => settings.padding;
  double get border => settings.border;
  double get appBarHeight => 80;
  set themeMode(val) => settings = settings.copyWith(themeModeX: ThemeModeX(themeMode: val));
  set color(val) => settings = settings.copyWith(materialColorX: MaterialColorX(color: val));
  set font(val) {
    settings = settings.copyWith(font: val);
  }

  set padding(val) => settings = settings.copyWith(padding: val);
  set border(val) => settings = settings.copyWith(border: val);
}

final settingsBloc = SettingsBloc();

// ignore: prefer_function_declarations_over_variables
final showException = (Exception e) {
  RM.scaffold.showSnackBar(
    SnackBar(
      content: Text(e.toString()),
      duration: 1.seconds,
    ),
  );
};
