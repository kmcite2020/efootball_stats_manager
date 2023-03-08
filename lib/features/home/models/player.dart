import 'dart:convert';

import '../controller.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Player {
  final String name;
  final int goals;
  final Status status;
  Player({
    required this.name,
    required this.goals,
    required this.status,
  });

  Player copyWith({
    String? name,
    int? goals,
    Status? status,
  }) {
    return Player(
      name: name ?? this.name,
      goals: goals ?? this.goals,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'goals': goals,
      'status': status.toMap(),
    };
  }

  factory Player.fromMap(Map<String, dynamic> map) {
    return Player(
      name: map['name'] as String,
      goals: map['goals'] as int,
      status: Status.fromMap(map['status']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Player.fromJson(String source) => Player.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Player(name: $name, goals: $goals, status: $status)';

  @override
  bool operator ==(covariant Player other) {
    if (identical(this, other)) return true;

    return other.name == name && other.goals == goals && other.status == status;
  }

  @override
  int get hashCode => name.hashCode ^ goals.hashCode ^ status.hashCode;
}
