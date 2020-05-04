import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_stars_flutter/presentation/bloc/settings/settings_bloc.dart';

class SettingFragment extends StatelessWidget {
  const SettingFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = BlocProvider.of<SettingsBloc>(context);

    return BlocBuilder<SettingsBloc, ThemeMode>(
      builder: (context, themeMode) {
        return ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text("Select Theme:"),
            DropdownButton<ThemeMode>(
              value: themeMode,
              items: [
                ThemeMode.system,
                ThemeMode.light,
                ThemeMode.dark,
              ].map((themeMode) {
                return DropdownMenuItem<ThemeMode>(
                  value: themeMode,
                  child: Text(themeMode.toString()),
                );
              }).toList(),
              onChanged: (themeMode) => settingsBloc.add(themeMode),
            ),
          ],
        );
      },
    );
  }
}
