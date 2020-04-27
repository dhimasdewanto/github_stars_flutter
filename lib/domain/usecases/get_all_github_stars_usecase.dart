import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllGithubStarsUsecase {
  GetAllGithubStarsUsecase({
    @required this.repo,
  });

  final GithubStarsRepo repo;

  Future<List<GithubStars>> call(int page) async {
    final isValid = await validate(page);

    if (isValid) {
      return repo.getListGithubStars(page);
    }

    return null;
  }

  Future<bool> validate(int page) async {
    return page > 0;
  }
}
