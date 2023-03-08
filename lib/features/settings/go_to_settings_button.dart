import 'package:efootball_stats_manager/navigator.dart';

import 'view.dart';
import 'package:flutter/material.dart';

class GotoSettingsPageButton extends StatelessWidget {
  const GotoSettingsPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => navigator.toPageless(const SettingsPage()),
      icon: const Icon(
        Icons.settings,
      ),
    );
  }
}
