import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/widgets/pagewise_github_stars.dart';

class ViewAllFragment extends StatelessWidget {
  const ViewAllFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubStarsBloc, GithubStarsState>(
      builder: (context, state) {
        final futureListGithubStars = state.futureListGithubStars;

        return PagewiseGithubStars(
          pageSize: AppSettings.maxItemPerPage,
          pageFuture: (index) {
            return futureListGithubStars(index + 1);
          },
        );
      },
    );
  }
}
