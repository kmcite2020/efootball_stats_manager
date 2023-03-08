import 'package:efootball_stats_manager/features/home/models/players.dart';

import '../../shared/initializer_list.dart';
import 'interface.dart';

class PlayerRepository implements PlayerInterface {
  @override
  Players get players => Players.fromJson(source.load('players'));

  @override
  set players(Players value) {
    source.save('players', value.toJson());
  }

  // @override
  // getPlayers() async {
  //   source.load('PLAYERS')
  // }

  // @override
  // Future<void> addPlayer(Player player) async {
  //   var temp = <String>[...?preferences.getStringList('key'), jsonEncode(player.toJson())];

  //   preferences.setStringList('key', temp);
  // }

  // @override
  // delete(Player player) {
  //   // TO//DO: implement delete
  //   throw UnimplementedError();
  // }

  // @override
  // deleteAll() {
  //   // TO//DO: implement deleteAll
  //   throw UnimplementedError();
  // }
}
