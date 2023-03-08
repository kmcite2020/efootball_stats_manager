// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'models/player.dart';
import 'models/players.dart';

class HomeBloc {
  late final _playersRM = RM.inject<Players>(
    () => Players.init,
    persist: () => PersistState(
      key: 'players',
      toJson: (s) => s.toJson(),
      fromJson: (json) => Players.fromJson(json),
    ),
  );

  Set<Player> get players => _players.players;

  Players get _players => _playersRM.state;
  set _players(Players val) => _playersRM.state = val;

  void addPlayer(Player player) => _players = _players.copyWith(players: {...players, player});
  void deletePlayer(Player player) => _players = _players.copyWith(players: {
        for (var eachPlayer in players)
          if (eachPlayer != player) eachPlayer
      });

  bool get valid => playerForm.isValid;
  late final playerForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      final player = Player(name: nameTextEdit.text, goals: int.parse(goalTextEdit.text), status: statusFormField.value);
      addPlayer(player);
    },
  );
  final nameTextEdit = RM.injectTextEditing();
  final goalTextEdit = RM.injectTextEditing(validators: [
    (goal) {
      var temp = int.tryParse(goal!);
      if (temp == null) {
        return 'ERROR';
      } else if (temp > 2000) {
        return '> 2000';
      } else {
        return null;
      }
    }
  ]);
  final statusFormField = RM.injectFormField<Status>(Status.common);
  void increment(Player player) => modifyGoals(player, 1);
  void decrement(Player player) => modifyGoals(player, -1);

  void modifyGoals(Player player, int goals) {
    _players = _players.copyWith(
      players: Set.from({
        for (var eachPlayer in players)
          if (eachPlayer == player) player.copyWith(goals: player.goals + goals)
      }),
    );
  }
}

// DEPENDENCY INJECTION
final HomeBloc homeBloc = HomeBloc();

enum Status {
  common,
  legend;

  int toMap() => index;
  static Status fromMap(int map) => Status.values[map];
}
