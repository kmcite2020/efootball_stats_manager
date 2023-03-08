import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/settings/settings_bloc.dart';

ThemeData get lightTheme => ThemeData(
      listTileTheme: ListTileThemeData(
        tileColor: settingsBloc.materialColor.shade200,
        selectedTileColor: settingsBloc.materialColor.shade400.withAlpha(200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        menuStyle: MenuStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: settingsBloc.materialColor.shade200,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
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
      scaffoldBackgroundColor: settingsBloc.materialColor.shade100,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: settingsBloc.materialColor.shade200,
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
      canvasColor: settingsBloc.materialColor.shade200,
      focusColor: settingsBloc.materialColor.shade400,
      hintColor: settingsBloc.materialColor,
      hoverColor: settingsBloc.materialColor.shade400,
      indicatorColor: settingsBloc.materialColor,
      // primaryColor: color,
      primaryColorDark: settingsBloc.materialColor.shade800,
      primaryColorLight: settingsBloc.materialColor.shade200,
      // primarySwatch: Colors.blue,
      secondaryHeaderColor: settingsBloc.materialColor,
      shadowColor: settingsBloc.materialColor,
      splashColor: settingsBloc.materialColor,
      unselectedWidgetColor: settingsBloc.materialColor.withAlpha(100),
      dialogTheme: DialogTheme(
        elevation: 10,
        backgroundColor: settingsBloc.materialColor.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsBloc.border)),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: settingsBloc.materialColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsBloc.border,
          ),
        ),
      ),
      appBarTheme:
          AppBarTheme(backgroundColor: settingsBloc.materialColor.shade100, elevation: 10, toolbarHeight: settingsBloc.appBarHeight),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: settingsBloc.materialColor.shade900,
          foregroundColor: settingsBloc.materialColor.shade100,
          minimumSize: const Size(100, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.border,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(100, 40),
          backgroundColor: settingsBloc.materialColor.shade700,
          foregroundColor: settingsBloc.materialColor.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.border,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: settingsBloc.materialColor.shade800,
          minimumSize: const Size(100, 40),
          foregroundColor: settingsBloc.materialColor.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              settingsBloc.border,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: EdgeInsets.all(18),
        filled: true,
        fillColor: settingsBloc.materialColor.shade200,
        hoverColor: settingsBloc.materialColor.shade600,
        focusColor: settingsBloc.materialColor.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(settingsBloc.border),
        ),
      ),
      colorSchemeSeed: settingsBloc.materialColor,

      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: GoogleFonts.getFont(settingsBloc.font).fontFamily,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return settingsBloc.materialColor;
            }
            return null;
          },
        ),
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
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return settingsBloc.materialColor;
            }
            return null;
          },
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return settingsBloc.materialColor;
            }
            return null;
          },
        ),
      ),
    );
