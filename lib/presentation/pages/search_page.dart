import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/presentation/bloc/search_github_stars/search_github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/widgets/pagewise_github_stars.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchGithubStarsBloc>(
      create: (context) => getIt<SearchGithubStarsBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Builder(
            builder: (context) {
              return TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {
                  BlocProvider.of<SearchGithubStarsBloc>(context).add(
                    SearchEvent(
                      searchText: value,
                    ),
                  );
                },
              );
            },
          ),
        ),
        body: BlocBuilder<SearchGithubStarsBloc, SearchGithubStarsState>(
          builder: (context, state) {
            if (state is SearchedGithubStarsState) {
              final futureListGithubStars = state.futureListGithubStars;

              return PagewiseGithubStars(
                controller: PagewiseLoadController<GithubStars>(
                  pageSize: AppSettings.maxItemPerPage,
                  pageFuture: (index) {
                    return futureListGithubStars(index + 1);
                  },
                ),
              );
            }

            return const Offstage();
          },
        ),
      ),
    );
  }
}
