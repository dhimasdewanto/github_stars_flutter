import 'package:github_stars_flutter/domain/entities/github_stars.dart';

abstract class GithubStarsRepo {
  Future<List<GithubStars>> getListGithubStars(int page);
}