// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'controller.dart';
import '../settings/go_to_settings_button.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'models.dart';

class MyHomePage extends ReactiveStatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: const [GotoSettingsPageButton()],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: OnFormBuilder(
              listenTo: home.playerForm,
              builder: () {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: home.nameTextEdit.controller,
                          decoration: InputDecoration(
                            labelText: 'Player Name',
                            errorText: home.nameTextEdit.error,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: home.goalTextEdit.controller,
                          decoration: InputDecoration(
                            labelText: 'Goals',
                            errorText: home.goalTextEdit.error,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Add'),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          for (final Player eachPlayer in home.players) Text(eachPlayer.name)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: home.isFormValid ? () => home.playerForm.submit() : null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
