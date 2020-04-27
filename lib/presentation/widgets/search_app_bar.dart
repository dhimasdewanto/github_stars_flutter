import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';

class SearchAppBar extends AppBar {
  SearchAppBar({Key key})
      : super(
          key: key,
          title: BlocBuilder<GithubStarsBloc, GithubStarsState>(
            builder: (context, state) {
              if (state is OpenSearchState) {
                return TextField(
                  onSubmitted: (value) {
                    BlocProvider.of<GithubStarsBloc>(context).add(SearchingEvent(
                      searchText: value,
                    ));
                  },
                );
              }

              return const Text(AppSettings.appName);
            },
          ),
          actions: [
            BlocBuilder<GithubStarsBloc, GithubStarsState>(
              builder: (context, state) {
                if (state is OpenSearchState) {
                  return IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      BlocProvider.of<GithubStarsBloc>(context).add(CloseSearchEvent());
                    },
                  );
                }

                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    BlocProvider.of<GithubStarsBloc>(context).add(OpenSearchEvent());
                  },
                );
              },
            ),
          ],
        );
}
