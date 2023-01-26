import 'package:flutter/material.dart';

import '../features/settings/controller.dart';

ThemeData get darkTheme => ThemeData(
      cardColor: settings.materialColor,
      disabledColor: settings.materialColor,
      dividerColor: settings.materialColor,
      highlightColor: settings.materialColor,
      scaffoldBackgroundColor: settings.materialColor.shade800,
      canvasColor: settings.materialColor.shade900,
      focusColor: settings.materialColor.shade400,
      hintColor: settings.materialColor,
      hoverColor: settings.materialColor,
      indicatorColor: settings.materialColor,
      primaryColorDark: settings.materialColor.shade800,
      primaryColorLight: settings.materialColor.shade200,
      colorSchemeSeed: settings.materialColor,
      secondaryHeaderColor: settings.materialColor,
      shadowColor: settings.materialColor,
      splashColor: settings.materialColor,
      unselectedWidgetColor: settings.materialColor.withAlpha(100),
      dialogTheme: DialogTheme(backgroundColor: settings.materialColor.shade700),
      popupMenuTheme: PopupMenuThemeData(
        color: settings.materialColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      appBarTheme: AppBarTheme(backgroundColor: settings.materialColor.shade900, elevation: 10, toolbarHeight: settings.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(100, 40),
          backgroundColor: settings.materialColor.shade300,
          foregroundColor: settings.materialColor.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(settings.borderRadius),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: settings.materialColor.shade600,
            foregroundColor: settings.materialColor.shade900,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius))),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(100, 40),
            backgroundColor: settings.materialColor.shade800,
            foregroundColor: settings.materialColor.shade200,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius))),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: settings.materialColor.shade800,
        hoverColor: settings.materialColor.shade900,
        focusColor: settings.materialColor.shade600,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      cardTheme: CardTheme(
        color: settings.materialColor.shade900,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        margin: EdgeInsets.all(settings.padding),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: settings.materialColor.shade900,
        selectedTileColor: settings.materialColor.shade600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: settings.font,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settings.materialColor;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return settings.materialColor;
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
            return settings.materialColor;
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
            return settings.materialColor;
          }
          return null;
        }),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: settings.materialColor),
      // colorScheme: ColorScheme(background: settingsModel.materialColor).copyWith(error: settingsModel.materialColor),
    );
