import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/core/dependency_injection/dependency_injection.dart';
import 'package:github_stars_flutter/core/router/router.gr.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/widgets/star_widget.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final githubStarsBloc = getIt<GithubStarsBloc>();

    return BlocProvider<GithubStarsBloc>(
      create: (context) => githubStarsBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppSettings.appName),
        ),
        body: BlocBuilder<GithubStarsBloc, GithubStarsState>(
          builder: (context, state) {
            final futureListGithubStars =
                (state as ViewGithubStarsState).futureListGithubStars;

            return PagewiseListView<GithubStars>(
              pageSize: AppSettings.maxItemPerPage,
              pageFuture: (index) {
                return futureListGithubStars(index + 1);
              },
              itemBuilder: (context, star, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        ExtendedNavigator.of(context).pushNamed(
                          Routes.viewDetailPage,
                          arguments: ViewDetailPageArguments(
                            githubStars: star,
                          ),
                        );
                      },
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Text("${star.ownerName}/${star.name}"),
                            ),
                            if (star.programmingLanguage != null)
                              Container(
                                margin: const EdgeInsetsDirectional.only(
                                  start: 5.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: Text(
                                  star.programmingLanguage,
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .subtitle
                                        .fontSize,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      subtitle: Text(star.description),
                      leading: CachedNetworkImage(
                        width: 40.0,
                        height: 40.0,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        imageUrl: star.ownerImageUrl,
                      ),
                      trailing: StarWidget(
                        starCount: star.starsCount,
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
