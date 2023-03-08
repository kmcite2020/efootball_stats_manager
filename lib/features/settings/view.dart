import 'package:efootball_stats_manager/features/settings/settings_bloc.dart';
import 'package:efootball_stats_manager/features/user/logout_button__view.dart';
import 'package:efootball_stats_manager/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Settings', textScaleFactor: 1.5),
        actions: const [
          BackButton(),
        ],
      ),
      body: ListView(
        children: [
          const UserCardView(),
          const LogoutButtonView(),
          _buildCurrentSettingsView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsBloc.themeMode,
              items: THEMES
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toString()),
                    ),
                  )
                  .toList(),
              onChanged: (themeMode) => settingsBloc.themeMode = themeMode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsBloc.materialColor,
              items: COLORS
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Container(color: e, child: Text(e.toString().substring(29).substring(0, 17))),
                    ),
                  )
                  .toList(),
              onChanged: (color) => settingsBloc.color = color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsBloc.font,
              items: FONTS
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toString(), style: GoogleFonts.getFont(e)),
                    ),
                  )
                  .toList(),
              onChanged: (font) => settingsBloc.font = font,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsBloc.padding,
              items: PADDINGS
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (padding) => settingsBloc.padding = padding,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsBloc.border,
              items: BORDERS
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toString()),
                    ),
                  )
                  .toList(),
              onChanged: (border) => settingsBloc.border = border,
            ),
          ),
        ],
      ),
    );
  }

  _buildCurrentSettingsView() {
    return Card(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('CURRENT SETTINGS', textScaleFactor: 2),
          ),
          ...settingsBloc.settings.props.map(
            (e) => Padding(
              padding: const EdgeInsets.all(4),
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  disabledForegroundColor: e is MaterialColor ? e : Colors.amber,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(e.toString()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
