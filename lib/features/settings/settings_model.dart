// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class SettingsModel {
  List<Object> get props => [
        themeModeX.themeMode,
        materialColorX.color,
        font,
        padding,
        border,
      ];
  final ThemeModeX themeModeX;
  final MaterialColorX materialColorX;
  final Font font;
  final double padding;
  final double border;
  SettingsModel({
    required this.themeModeX,
    required this.materialColorX,
    required this.font,
    required this.padding,
    required this.border,
  });

  SettingsModel copyWith({
    ThemeModeX? themeModeX,
    MaterialColorX? materialColorX,
    Font? font,
    double? padding,
    double? border,
  }) {
    return SettingsModel(
      themeModeX: themeModeX ?? this.themeModeX,
      materialColorX: materialColorX ?? this.materialColorX,
      font: font ?? this.font,
      padding: padding ?? this.padding,
      border: border ?? this.border,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeModeX': themeModeX.toMap(),
      'materialColorX': materialColorX.toMap(),
      'font': font,
      'padding': padding,
      'border': border,
    };
  }

  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    return SettingsModel(
      themeModeX: ThemeModeX.fromMap(map['themeModeX'] as Map<String, dynamic>),
      materialColorX: MaterialColorX.fromMap(map['materialColorX'] as Map<String, dynamic>),
      font: map['font'],
      padding: map['padding'] as double,
      border: map['border'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingsModel.fromJson(String? source) {
    if (source == null) return init;
    return SettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() {
    return 'SettingsModel(themeModeX: $themeModeX, materialColorX: $materialColorX, font: $font, padding: $padding, border: $border)';
  }

  @override
  bool operator ==(covariant SettingsModel other) {
    if (identical(this, other)) return true;

    return other.themeModeX == themeModeX &&
        other.materialColorX == materialColorX &&
        other.font == font &&
        other.padding == padding &&
        other.border == border;
  }

  @override
  int get hashCode {
    return themeModeX.hashCode ^ materialColorX.hashCode ^ font.hashCode ^ padding.hashCode ^ border.hashCode;
  }

  static SettingsModel get init => SettingsModel(
        themeModeX: ThemeModeX(themeMode: ThemeMode.system),
        materialColorX: MaterialColorX(color: Colors.cyan),
        font: 'Dosis',
        padding: 8,
        border: 16,
      );
}

typedef Font = String;

class ThemeModeX {
  final ThemeMode themeMode;
  ThemeModeX({
    required this.themeMode,
  });

  ThemeModeX copyWith({
    ThemeMode? themeMode,
  }) {
    return ThemeModeX(
      themeMode: themeMode ?? this.themeMode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeMode': ThemeMode.values.indexOf(themeMode),
    };
  }

  factory ThemeModeX.fromMap(Map<String, dynamic> map) {
    return ThemeModeX(
      themeMode: ThemeMode.values[map['themeMode']],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeModeX.fromJson(String source) => ThemeModeX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ThemeModeX(themeMode: $themeMode)';

  @override
  bool operator ==(covariant ThemeModeX other) {
    if (identical(this, other)) return true;

    return other.themeMode == themeMode;
  }

  @override
  int get hashCode => themeMode.hashCode;
}

class MaterialColorX {
  final MaterialColor color;
  MaterialColorX({
    required this.color,
  });

  MaterialColorX copyWith({
    MaterialColor? color,
  }) {
    return MaterialColorX(
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': Colors.primaries.indexOf(color),
    };
  }

  factory MaterialColorX.fromMap(Map<String, dynamic> map) {
    return MaterialColorX(
      color: Colors.primaries[map['color']],
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterialColorX.fromJson(String source) => MaterialColorX.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MaterialColorX(color: $color)';

  @override
  bool operator ==(covariant MaterialColorX other) {
    if (identical(this, other)) return true;

    return other.color == color;
  }

  @override
  int get hashCode => color.hashCode;
}
