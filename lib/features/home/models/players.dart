// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'player.dart';

class Players {
  final Set<Player> players;
  Players({
    required this.players,
  });

  Players copyWith({
    Set<Player>? players,
  }) {
    return Players(
      players: players ?? this.players,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'players': players.map((x) => x.toMap()).toList(),
    };
  }

  factory Players.fromMap(Map<String, dynamic> map) {
    return Players(
      players: Set<Player>.from(
        (map['players']).map<Player>(
          (x) => Player.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Players.fromJson(String? source) {
    if (source == null) return init;
    return Players.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() => 'Players(players: $players)';

  @override
  bool operator ==(covariant Players other) {
    if (identical(this, other)) return true;

    return setEquals(other.players, players);
  }

  @override
  int get hashCode => players.hashCode;
  static Players get init => Players(players: {});
}
