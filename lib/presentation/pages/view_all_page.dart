import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/core/router/router.gr.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/widgets/pagewise_github_stars.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GithubStarsBloc>(
      create: (context) => getIt<GithubStarsBloc>(),
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: BlocBuilder<GithubStarsBloc, GithubStarsState>(
          builder: (context, state) {
            final futureListGithubStars =
                (state as ViewGithubStarsState).futureListGithubStars;

            return PagewiseGithubStars(
              pageSize: AppSettings.maxItemPerPage,
              pageFuture: (index) {
                return futureListGithubStars(index + 1);
              },
            );
          },
        ),
      ),
    );
  }
}
