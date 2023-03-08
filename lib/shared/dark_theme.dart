import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/settings/settings_bloc.dart';

ThemeData get darkTheme {
  return ThemeData(
    cardColor: settingsBloc.materialColor,
    disabledColor: settingsBloc.materialColor,
    dividerColor: settingsBloc.materialColor,
    highlightColor: settingsBloc.materialColor,
    scaffoldBackgroundColor: settingsBloc.materialColor.shade800,
    canvasColor: settingsBloc.materialColor.shade900,
    focusColor: settingsBloc.materialColor.shade400,
    hintColor: settingsBloc.materialColor,
    hoverColor: settingsBloc.materialColor,
    indicatorColor: settingsBloc.materialColor,
    primaryColorDark: settingsBloc.materialColor.shade800,
    primaryColorLight: settingsBloc.materialColor.shade200,
    colorSchemeSeed: settingsBloc.materialColor,
    secondaryHeaderColor: settingsBloc.materialColor,
    shadowColor: settingsBloc.materialColor,
    splashColor: settingsBloc.materialColor,
    unselectedWidgetColor: settingsBloc.materialColor.withAlpha(100),
    dialogTheme: DialogTheme(backgroundColor: settingsBloc.materialColor.shade700),
    popupMenuTheme: PopupMenuThemeData(
      color: settingsBloc.materialColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
    ),
    appBarTheme: AppBarTheme(backgroundColor: settingsBloc.materialColor.shade900, elevation: 10, toolbarHeight: settingsBloc.appBarHeight),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 10,
        minimumSize: const Size(100, 40),
        backgroundColor: settingsBloc.materialColor.shade300,
        foregroundColor: settingsBloc.materialColor.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settingsBloc.materialColor.shade600,
          foregroundColor: settingsBloc.materialColor.shade900,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border))),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settingsBloc.materialColor.shade800,
          foregroundColor: settingsBloc.materialColor.shade200,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border))),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: settingsBloc.materialColor.shade800,
      hoverColor: settingsBloc.materialColor.shade900,
      focusColor: settingsBloc.materialColor.shade600,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
    ),
    cardTheme: CardTheme(
      color: settingsBloc.materialColor.shade900,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(settingsBloc.border),
      ),
      margin: EdgeInsets.all(settingsBloc.padding),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: settingsBloc.materialColor.shade900,
      selectedTileColor: settingsBloc.materialColor.shade600,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
    ),
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: GoogleFonts.getFont(settingsBloc.font).fontFamily,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return settingsBloc.materialColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return settingsBloc.materialColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return settingsBloc.materialColor;
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return settingsBloc.materialColor;
        }
        return null;
      }),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: settingsBloc.materialColor),
  );
}
