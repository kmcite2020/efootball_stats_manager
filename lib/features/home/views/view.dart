// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/go_to_settings_button.dart';
import '../controller.dart';
import '../models/player.dart';
import 'add_player_form.dart';
import 'status_changer_widget.dart';

class MyHomePage extends ReactiveStatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: home.playerForm,
      builder: () => Scaffold(
        appBar: AppBar(
          title: Text("ESM"),
          actions: [GotoSettingsPageButton()],
        ),
        body: buildBody(),
      ),
    );
  }
}

buildBody() => Column(
      children: [
        StatusChangerWidget(),
        AddPlayerFormWidget(),
        PlayersView(),
      ],
    );

class PlayersView extends StatelessWidget {
  const PlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (final Player eachPlayer in home.players)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onLongPress: () => home.deletePlayer(eachPlayer),
              title: Text(eachPlayer.name),
              subtitle: Text(eachPlayer.goals.toString()),
              trailing: Tooltip(
                message: "TOGGLE STATUS",
                child: ElevatedButton(
                  onPressed: () => home.changeStatus(eachPlayer),
                  child: Text(
                    eachPlayer.status.name.toString(),
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
