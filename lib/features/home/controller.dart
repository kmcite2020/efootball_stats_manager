// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'models.dart';
import 'repository.dart';

@immutable
class HomeBloc {
  HomeBloc({required this.playerRepo});
  final PlayerRepository playerRepo;

  late final playersRM = RM.injectFuture<List<Player>>(() => playerRepo.getPlayers());
  // Future<void> addPlayer(Player player) async {
  //   playersRM.state = [
  //     ...playersRM.state,
  //     Player(
  //       name: nameTextEdit.text,
  //       goals: int.parse(goalTextEdit.text),
  //     )
  //   ];
  //   await playerRepo.addPlayer(player);
  // }

  final List<Player> initialList = [];

  late final homeStateRM = RM.inject<HomeState>(
    () => const HomeState(
      homeStatus: HomeStatus.loading,
      listOfPlayers: [],
    ),
  );
  List<Player> get players => homeStateRM.state.listOfPlayers;
  HomeState get homeState => homeStateRM.state;

  /// events
  void playersLoadedEvent() async {
    homeStateRM.state = HomeState(
      homeStatus: HomeStatus.loaded,
      listOfPlayers: await playerRepo.getPlayers(),
    );
  }

  void playerAddedEvent(String name, int goals) {
    homeStateRM.state = homeState.copyWith(homeStatus: HomeStatus.loading);
    var temp = [
      ...players,
      Player(name: name, goals: goals),
    ];
    homeStateRM.state = homeState.copyWith(homeStatus: HomeStatus.loaded, listOfPlayers: temp);
  }

  bool get isFormValid => playerForm.isValid;
  late final playerForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      playerAddedEvent(
        nameTextEdit.text,
        int.parse(goalTextEdit.text),
      );
    },
  );
  final nameTextEdit = RM.injectTextEditing(
    onTextEditing: (textEditing) => print(textEditing),
  );
  final goalTextEdit = RM.injectTextEditing(
    onTextEditing: (textEditing) => print(textEditing),
    validators: [
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
    ],
  );
}

enum HomeStatus { loading, loaded }

class HomeState {
  final HomeStatus homeStatus;
  final List<Player> listOfPlayers;
  const HomeState({
    required this.homeStatus,
    required this.listOfPlayers,
  });

  HomeState copyWith({
    HomeStatus? homeStatus,
    List<Player>? listOfPlayers,
  }) {
    return HomeState(
      homeStatus: homeStatus ?? this.homeStatus,
      listOfPlayers: listOfPlayers ?? this.listOfPlayers,
    );
  }
}

final HomeBloc home = HomeBloc(playerRepo: PlayerRepository());
