import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/core/router/router.gr.dart';

class ViewAllAppBar extends AppBar {
  ViewAllAppBar(BuildContext context)
      : super(
          title: const Text(AppSettings.appName),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                ExtendedNavigator.of(context).pushNamed(
                  Routes.searchPage,
                );
              },
            ),
          ],
        );
}