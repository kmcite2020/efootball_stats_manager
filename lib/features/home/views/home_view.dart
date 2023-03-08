// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/go_to_settings_button.dart';
import '../controller.dart';
import '../models/player.dart';
import 'add_player_form.dart';

class HomeView extends ReactiveStatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: homeBloc.playerForm,
      builder: () => Scaffold(
        appBar: AppBar(
          title: Text("eFootball Stats Manager"),
          actions: [
            GotoSettingsPageButton(),
          ],
        ),
        body: Column(
          children: [
            AddPlayerFormWidget(),
            PlayersView(),
          ],
        ),
      ),
    );
  }
}

class PlayersView extends StatelessWidget {
  const PlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (final Player eachPlayer in homeBloc.players)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onLongPress: () => homeBloc.deletePlayer(eachPlayer),
              title: Text(
                eachPlayer.name,
                textScaleFactor: 1.6,
              ),
              subtitle: Column(
                children: [
                  Text(eachPlayer.goals.toString(), textScaleFactor: 4),
                  Row(
                    children: [
                      for (final eachInc in [2, 3, 4, 5])
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () => homeBloc.modifyGoals(eachPlayer, eachInc),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(40, 40),
                            ),
                            child: Text(
                              eachInc.toString(),
                            ),
                          ),
                        )
                    ],
                  ),
                  Row(
                    children: [
                      Tooltip(
                        message: "INC",
                        child: IconButton(
                          onPressed: () => homeBloc.increment(eachPlayer),
                          icon: Icon(Icons.ac_unit_rounded),
                        ),
                      ),
                      Tooltip(
                        message: "DEC",
                        child: IconButton(
                          onPressed: () => homeBloc.decrement(eachPlayer),
                          icon: Icon(
                            Icons.sd_card,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
