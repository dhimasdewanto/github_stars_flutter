import 'package:flutter/material.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/presentation/widgets/star_widget.dart';

class ViewDetailPage extends StatelessWidget {
  const ViewDetailPage({
    Key key,
    @required this.githubStars,
  }) : super(key: key);

  final GithubStars githubStars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppSettings.appName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${githubStars.ownerName}/${githubStars.name}",
              style: Theme.of(context).textTheme.headline,
            ),
            const SizedBox(height: 20.0),
            Text(githubStars.description),
            const SizedBox(height: 20.0),
            StarWidget(
              starCount: githubStars.starsCount,
            ),
            if (githubStars.programmingLanguage != null)
              Column(
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  Text("Language: ${githubStars.programmingLanguage}"),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
