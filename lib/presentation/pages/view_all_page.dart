import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/presentation/app_bars/settings_app_bar.dart';
import 'package:github_stars_flutter/presentation/app_bars/view_all_app_bar.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/fragments/settings_fragment.dart';
import 'package:github_stars_flutter/presentation/fragments/view_all_fragment.dart';

class ViewAllPage extends StatefulWidget {
  const ViewAllPage({Key key}) : super(key: key);

  @override
  _ViewAllPageState createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  var _selectedIndex = 0;

  final _fragments = [
    const ViewAllFragment(),
    const SettingFragment(),
  ];

  AppBar _getAppBar(BuildContext context, int index) {
    final listAppBars = [
      ViewAllAppBar(context),
      SettingsAppBar(),
    ];
    return listAppBars[index];
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GithubStarsBloc>(
      create: (context) => getIt<GithubStarsBloc>(),
      child: Scaffold(
        appBar: _getAppBar(context, _selectedIndex),
        body: _fragments[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: const Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: const Text('Settings'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
