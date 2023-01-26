import 'package:flutter/material.dart';

import '../features/settings/controller.dart';

ThemeData get lightTheme => ThemeData(
      listTileTheme: ListTileThemeData(
        tileColor: settings.materialColor.shade200,
        selectedTileColor: settings.materialColor.shade400.withAlpha(200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
      ),
      cardTheme: CardTheme(
        color: settings.materialColor.shade200,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        // margin: EdgeInsets.all(padding),
      ),
      // backgroundColor: Colors.blue,
      // bottomAppBarColor: Colors.blue,
      // cardColor: Colors.blue,
      // colorScheme: Colors.blue,
      // dialogBackgroundColor: Colors.blue,
      // disabledColor: Colors.blue,
      // dividerColor: Colors.blue,
      // errorColor: Colors.blue,
      // highlightColor: Colors.blue,
      scaffoldBackgroundColor: settings.materialColor.shade100,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: settings.materialColor.shade200,
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
      ),
      canvasColor: settings.materialColor.shade200,
      focusColor: settings.materialColor.shade400,
      hintColor: settings.materialColor,
      hoverColor: settings.materialColor.shade400,
      indicatorColor: settings.materialColor,
      // primaryColor: color,
      primaryColorDark: settings.materialColor.shade800,
      primaryColorLight: settings.materialColor.shade200,
      // primarySwatch: Colors.blue,
      secondaryHeaderColor: settings.materialColor,
      shadowColor: settings.materialColor,
      splashColor: settings.materialColor,
      unselectedWidgetColor: settings.materialColor.withAlpha(100),
      dialogTheme: DialogTheme(
        elevation: 10,
        backgroundColor: settings.materialColor.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settings.borderRadius)),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: settings.materialColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settings.borderRadius,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(backgroundColor: settings.materialColor.shade100, elevation: 10, toolbarHeight: settings.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: settings.materialColor.shade900,
          foregroundColor: settings.materialColor.shade100,
          minimumSize: const Size(100, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settings.borderRadius,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(100, 40),
          backgroundColor: settings.materialColor.shade700,
          foregroundColor: settings.materialColor.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settings.borderRadius,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: settings.materialColor.shade800,
          minimumSize: const Size(100, 40),
          foregroundColor: settings.materialColor.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settings.borderRadius,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: EdgeInsets.all(18),
        filled: true,
        fillColor: settings.materialColor.shade200,
        hoverColor: settings.materialColor.shade600,
        focusColor: settings.materialColor.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(settings.borderRadius),
        ),
      ),
      colorSchemeSeed: settings.materialColor,

      brightness: Brightness.light,
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
    );
