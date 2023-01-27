import 'view.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class GotoSettingsPageButton extends StatelessWidget {
  const GotoSettingsPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RM.navigate.to(const SettingsPage()),
      icon: const Icon(
        Icons.settings,
      ),
    );
  }
}
