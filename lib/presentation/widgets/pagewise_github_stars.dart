import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:github_stars_flutter/core/router/router.gr.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';

import 'star_widget.dart';

class PagewiseGithubStars extends StatelessWidget {
  const PagewiseGithubStars({
    Key key,
    this.controller,
    this.pageSize,
    this.pageFuture,
  })  : assert((pageFuture != null && pageSize != null && controller == null) ||
            (pageFuture == null && pageSize == null && controller != null)),
        super(key: key);

  final PagewiseLoadController<GithubStars> controller;
  final int pageSize;
  final Future<List<GithubStars>> Function(int) pageFuture;

  @override
  Widget build(BuildContext context) {
    return PagewiseListView<GithubStars>(
      pageLoadController: controller,
      pageSize: pageSize,
      pageFuture: pageFuture,
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
                            fontSize:
                                Theme.of(context).textTheme.subtitle2.fontSize,
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
  }
}
