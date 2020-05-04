import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_settings.dart';
import 'core/dependency_injection/dependency_injection.dart' as di;
import 'core/dependency_injection/dependency_injection.dart';
import 'core/router/router.gr.dart';
import 'presentation/bloc/settings/settings_bloc.dart';

void main() {
  di.initInjection(di.Env.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (context) => getIt<SettingsBloc>(),
      child: BlocBuilder<SettingsBloc, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: AppSettings.appName,
            themeMode: themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            builder: ExtendedNavigator<Router>(
              router: Router(),
            ),
          );
        },
      ),
    );
  }
}
