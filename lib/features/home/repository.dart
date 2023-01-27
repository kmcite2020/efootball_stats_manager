import 'dart:convert';

import '../../shared/shared_preferences.dart';
import 'failures.dart';
import 'interface.dart';
import 'models.dart';

class PlayerRepository implements PlayerInterface {
  @override
  Future<List<Player>> getPlayers() async {
    List<Player> list = [];
    try {
      if (preferences.getStringList('players') == null) return list;
      list = preferences.getStringList('players')!.map((e) => Player.fromJson(jsonDecode(e))).toList();
      return list;
    } catch (e) {
      throw PlayerFailure();
    }
  }

  @override
  Future<void> addPlayer(Player player) async {
    var temp = <String>[...?preferences.getStringList('key'), jsonEncode(player.toJson())];

    preferences.setStringList('key', temp);
  }
}
