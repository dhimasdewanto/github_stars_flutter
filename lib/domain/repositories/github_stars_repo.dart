import 'package:github_stars_flutter/domain/entities/github_stars.dart';

abstract class GithubStarsRepo {
  Future<List<GithubStars>> getListGithubStars(int page);
  Future<List<GithubStars>> searchGithubStars(String searchText, int page);
}