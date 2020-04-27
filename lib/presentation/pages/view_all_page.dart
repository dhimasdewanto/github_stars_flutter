import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/widgets/pagewise_github_stars.dart';
import 'package:github_stars_flutter/presentation/widgets/search_app_bar.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final githubStarsBloc = getIt<GithubStarsBloc>();

    return BlocProvider<GithubStarsBloc>(
      create: (context) => githubStarsBloc,
      child: Scaffold(
        appBar: SearchAppBar(),
        body: BlocBuilder<GithubStarsBloc, GithubStarsState>(
          builder: (context, state) {
            Future<List<GithubStars>> Function(int) futureListGithubStars;

            if (state is ViewGithubStarsState) {
              futureListGithubStars = state.futureListGithubStars;
            } else if (state is OpenSearchState) {
              futureListGithubStars = state.futureListGithubStars;
            } else if (state is SearchedGithubStarsState) {
              futureListGithubStars = state.futureListGithubStars;
            }

            return PagewiseGithubStars(
              controller: PagewiseLoadController<GithubStars>(
                pageSize: AppSettings.maxItemPerPage,
                pageFuture: (index) {
                  return futureListGithubStars(index + 1);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
