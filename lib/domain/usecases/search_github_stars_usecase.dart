import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchGithubStarsUsecase {
  SearchGithubStarsUsecase({
    @required this.repo,
  });

  final GithubStarsRepo repo;

  Future<List<GithubStars>> call(String searchText, int page) async {
    final isValid = await validate(searchText, page);

    if (isValid) {
      return repo.searchGithubStars(searchText, page);
    }

    return null;
  }

  Future<bool> validate(String searchText, int page) async {
    if (page <= 0) {
      return false;
    }

    if (searchText == null) {
      return false;
    }

    if (searchText.isEmpty) {
      return false;
    }

    if (searchText.length > 20) {
      return false;
    }

    return true;
  }
}
